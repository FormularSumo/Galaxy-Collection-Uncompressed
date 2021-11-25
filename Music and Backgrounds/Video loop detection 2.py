import pylab
import imageio
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import numpy as np
import time 
import pdb
import collections
import pandas as pd
import imageio
from PIL import Image

def show_frame(frame):
	image = vid.get_data(frame)
	fig = pylab.figure()
	fig.suptitle('frame #{}'.format(frame), fontsize=20)
	pylab.imshow(image)
	pylab.show()

def compare_frames(frame1, frame2):
	fig = plt.figure()
	a=fig.add_subplot(1,2,1)
	img = vid.get_data(frame1)
	imgplot = plt.imshow(img)
	a.set_title('Frame #%s' % frame1)
	a=fig.add_subplot(1,2,2)
	img = vid.get_data(frame2)
	imgplot = plt.imshow(img)
	a.set_title('Frame #%s' % frame2)
	plt.show()

def diff_frames(frame1, frame2):
	f1 = vid.get_data(frame1)
	f2 = vid.get_data(frame2)
	return f1 - f2

def round_int(x):
    if x in [float("-inf"),float("inf")]: return float("nan")
    return int(round(x))

def find_duplicates(res=32):
	# load in the video file
	vid = imageio.get_reader('Starry Sky.mp4',  'ffmpeg')
	all_frames = vid.get_length()

	# we'll store the info on repeated frames here
	seen_frames = {}
	duplicate_frames = {}

	for i, im in enumerate(vid): 
		# get frame i
		frame = vid.get_data(i)

		if i % 1000 == 0:
			print("frame count: ",i,"\t",round(i*1.0/all_frames,3)*100,'%')

		# hash our frame
		hashed = ahash(frame, res)
		
		if seen_frames.get( hashed, None):
			# if we've seen this frame before, add it to the list of frames 
			# that all have the same hashed value in duplicate_frames
			duplicate_frames[hashed].append(i)
		else:
			# if it's the first time seeing a frame, put it in seen_frames
			seen_frames[hashed] = i
			duplicate_frames[hashed] = [i]

	# return a list of lists of duplicate frames
	return [duplicate_frames[i] for i in duplicate_frames if len(duplicate_frames[i]) > 1]

def ahash(frame, res = 64):
	i = Image.fromarray(frame)
	i = i.resize((res,res), Image.ANTIALIAS).convert('L')
	pixels = list(i.getdata())
	avg = sum(pixels)/len(pixels)
	bits = "".join(map(lambda pixel: '1' if pixel < avg else '0', pixels))
	hexadecimal = int(bits, 2).__format__('016x').upper()
	return hexadecimal

def find_params():
	res = {}
	for y in range(8,102,4):
		row = {}
		bads = find_duplicates(y)
		row["len"] = len(bads)
		row["avg"] = np.mean([len(x) for x in bads])
		row["std"] = np.std([len(x) for x in bads])
		row["max"] = max([len(x) for x in bads])
		print("*"*25)
		print(y,row)
		print("*"*25)
		res[y] = row.copy()
	return res

print(find_duplicates())