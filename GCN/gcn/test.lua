require 'gcn'
torch.setdefaulttensortype('torch.FloatTensor')

jac = nn.Jacobian

size = math.random(30, 32)

input = torch.rand(4, size, size)
module = nn.GCConv(1, 2, 4, 1, 3, 3, 1, 1)

err = jac.testJacobian(module, input)
print(string.format('[GCConv] state error: %e', err))

err = jac.testJacobianParameters(module, input, module.weight, module.gradWeight)
print(string.format('[GCConv] weight  error: %e', err))

err = jac.testJacobianParameters(module, input, module.bias, module.gradBias)
print(string.format('[GCConv] bias error: %e', err))

err = jac.testJacobianUpdateParameters(module, input, module.weight)
print(string.format('[GCConv] update weight error: %e', err))

err = jac.testJacobianUpdateParameters(module, input, module.bias)
print(string.format('[GCConv] update weight error: %e', err))

for t,err in pairs(jac.testAllUpdate(module, input, 'weight', 'gradWeight')) do
    print(string.format('[GCConv] %e error on weight [%s]', err, t))
end

