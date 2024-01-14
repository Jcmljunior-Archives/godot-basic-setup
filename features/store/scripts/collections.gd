extends Node


# Essa função é usada para cópia de dicionários.
static var shallow_copy = func(dict: Dictionary) -> Dictionary:
	return shallow_merge.call(dict, {})


# Essa função é usada para mesclagem de dicionários.
static var shallow_merge = func(src_dict: Dictionary, dest_dict: Dictionary) -> Dictionary:
	for i in src_dict.keys():
		dest_dict[i] = src_dict[i]
	return dest_dict

