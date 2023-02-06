f=open("/home/tomy/cpu_exp/cpuex-v1.4/raytracer/ans_contest2.ppm",mode="r")
# f=open("/home/tomy/cpu_exp/compiler/ppms/contest128_2_goal.ppm",mode="r")
g=open("/home/tomy/cpu_exp/compiler/ppms/test_gv_no_lib.ppm",mode="r")
# g=open("/home/tomy/cpu_exp/compiler/ppms/contest_128_correct.ppm",mode="r")
correct=0
wrong=0
for line,line2 in zip(f,g):
    line,line2 = line.strip(),line2.strip()
    if line != line2:
        wrong += 1
    correct += 1
print(f"correct{correct}, wrong{wrong}")
print(f"Diff:{(wrong)/(correct+wrong)}")

