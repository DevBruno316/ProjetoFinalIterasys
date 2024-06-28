def area_do_cubo(val1):
    area_base_do_cubo = val1**2
    area_total_cubo = 6 * (area_base_do_cubo)
    return area_total_cubo

def area_do_paralelogramo(base,altura):
    return base*altura

def area_piramide_base_quadrada(a, h_l):
    # a =6 hl =8
    area_da_base = a ** 2 # = 36
    area_face_lateral = 0.5 * a * h_l # 24
    area_faces_laterais = 4 * area_face_lateral # 96
    area_total = area_da_base + area_faces_laterais # 96+36 = 132

    return area_total

   


