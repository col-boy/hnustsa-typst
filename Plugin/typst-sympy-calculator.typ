#let hidden(content) = {}

// matrix
#let cmat(..args) = {
  let mat = if (type(args.pos().at(0)) != "array") { (args.pos(),) } else { args.pos() }
  let mat_t = ()
  for j in range(mat.at(0).len()) {
    mat_t.push(())
    for i in range(mat.len()) {
      mat_t.at(j).push(mat.at(i).at(j))
    }
  }
  math.mat(..mat_t)
}

#let eye(n) = {
    let n = if (type(n) == "content") { int(n.text) } else { int(n) }
    let matrix = ()
    for i in range(n) {
        matrix.push(())
        for j in range(n) {
            if (i == j) {
                matrix.at(i).push(1)
            } else {
                matrix.at(i).push(0)
            }
        }
    }
    math.mat(..matrix)
}

#let diag(..args) = {
    let args = args.pos()
    let n = args.len()
    let matrix = ()
    for i in range(n) {
        matrix.push(())
        for j in range(n) {
            if (i == j) {
                matrix.at(i).push(args.at(j))
            } else {
                matrix.at(i).push(0)
            }
        }
    }    
    math.mat(..matrix)
}

// functions
#let derivative(expr, var) = $(dif)/(dif var) expr$
#let sign = math.op("sign")
#let evalat(body) = math.lr(body + "|")
#let rowswap = math.op("rowswap")
#let colswap = math.op("colswap")
#let rowscale = math.op("rowscale")
#let colscale = math.op("colscale")

// accents
#let hdot(a) = math.accent(a, math.dot)

#hidden[
```typst-calculator
@func_mat()
def convert_cmat(matrix):
    return sympy.Matrix(matrix).T

@func()
def convert_derivative(expr, var):
    return sympy.Derivative(expr, var)

@func()
def convert_eye(n):
    return sympy.eye(n)

@func()
def convert_diag(*args):
    return sympy.diag(*args)

@func()
def convert_sign(a):
    return sympy.sign(a)

@func()
def convert_rowswap(matrix, row1, row2):
    row1, row2 = row1 - 1, row2 - 1
    matrix[row1, :], matrix[row2, :] = matrix[row2, :], matrix[row1, :]
    return matrix

@func()
def convert_colswap(matrix, col1, col2):
    col1, col2 = col1 - 1, col2 - 1
    matrix[:, col1], matrix[:, col2] = matrix[:, col2], matrix[:, col1]
    return matrix

@func()
def convert_rowscale(matrix, row, ratio):
    row = row - 1
    matrix[row, :] = ratio * matrix[row, :]
    return matrix

@func()
def convert_colscale(matrix, col, ratio):
    col = col - 1
    matrix[:, col] = ratio * matrix[:, col]
    return matrix
```
]
