using Pkg

ENV["CONDA_JL_CONDA_EXE"] = "/home/ahura/anaconda3/bin/conda"
ENV["Python"] = "/home/ahura/anaconda3/envs/MyEnv/bin/python"
ENV["PYCALL_JL_RUNTIME_PYTHON"] = "/home/ahura/anaconda3/envs/MyEnv/bin/python"
ENV["PYTHONHOME"] = ENV["PYCALL_JL_RUNTIME_PYTHON"]
Pkg.build("Conda")
Pkg.build("PyCall")

pyimport("numpy")