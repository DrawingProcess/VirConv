import pickle

file_name = 'output/models/kitti/VirConv-T/default/eval/epoch_50/val/default/result.pkl'
with open(file_name, 'rb') as f:
   obj_name = pickle.load(f)
   print(obj_name)