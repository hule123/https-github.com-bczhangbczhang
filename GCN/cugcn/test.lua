require 'gcn'
require 'cugcn'

torch.setdefaulttensortype('torch.FloatTensor')
precision = 5e-4

cpu = nn.GCConv(2,2,8,1,3,3,1,1)
gpu = cpu:clone():cuda()
input = torch.rand(2, 2*(8), 7, 7)
output_cpu = cpu:forward(input)
output_gpu = gpu:forward(input:cuda())
err = math.abs(torch.sum(output_gpu:float() - output_cpu))
if err < precision then
    print("[GCConv] outputs OK", err)
else
    print("[GCConv] outputs are not equal", err)
end
gradInput_cpu = cpu:backward(input, output_cpu)
gradInput_gpu = gpu:backward(input:cuda(), output_gpu)
err = math.abs(torch.sum(gradInput_gpu:float() - gradInput_cpu))
if err < precision then
    print("[GCConv] gradInputs OK", err)
else
    print("[GCConv] gradInputs are not equal", err)
end
cpu:updateParameters(0.1)
gpu:updateParameters(0.1)
err = math.abs(torch.sum(gpu.weight:float() - cpu.weight))
if err < precision then
    print("[GCConv] weights OK", err)
else
    print("[GCConv] weights are not equal", err)
end
err = math.abs(torch.sum(gpu.bias:float() - cpu.bias))
if err < precision then
    print("[GCConv] biases OK", err)
else
    print("[GCConv] biases are not equal", err)
end


print("all done")
