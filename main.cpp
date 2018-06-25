#include <iostream>
#include "ClpSimplex.hpp"
#include "CoinHelperFunctions.hpp"
#include "CoinTime.hpp"
#include "CoinBuild.hpp"
#include "CoinModel.hpp"
#include <iomanip>
#include <cassert>

int main() {
  std::cout << "Hello, World!" << std::endl;

  // Empty model
  ClpSimplex  model;

  // Objective - just nonzeros
  int objIndex[] = {0, 1, 2, 3};
  double objValue[] = {1.0, 1.0, 1.0, 1.0};
  // Upper bounds - as dense vector
  double upper[] = {8, 7, 7, 8};

  // Create space for 4 columns
  model.resize(0, 4);
  // Fill in
  int i;
  // Virtuous way
  // First objective
  for (i = 0; i < 2; i++)
    model.setObjectiveCoefficient(objIndex[i], objValue[i]);
  // Now bounds (lower will be zero by default but do again)
  for (i = 0; i < 3; i++) {
    model.setColumnLower(i, 0.0);
    model.setColumnUpper(i, upper[i]);
  }
  /*
    We could also have done in non-virtuous way e.g.
    double * objective = model.objective();
    and then set directly
  */
  // Faster to add rows all at once - but this is easier to show
  // Now add row 1 as >= 2.0
  int row1Index[] = {0, 1, 2};
  double row1Value[] = {1.0, 1.0, 1.0};
  model.addRow(3, row1Index, row1Value, 10.0, 10.0);
  // Now add row 2 as == 1.0
  int row2Index[] = {0, 1, 3};
  double row2Value[] = {1.0, 1.0, 1.0};
  model.addRow(3, row2Index, row2Value, 10.0, 10.0);

  // Now add row 3
  int row3Index[] = {0, 1, 2, 3};
  double row3Value[] = {1.0, 1.0, 1.0, 1.0};
  model.addRow(4, row3Index, row3Value, 10.0, 10.0);


  // solve
  model.dual();


  int numberRows = model.numberRows();
  double * rowPrimal = model.primalRowSolution();
  double * rowDual = model.dualRowSolution();

  int iRow = 0;

  for (iRow=0;iRow<numberRows;iRow++)
    printf("Row %d, primal %g, dual %g\n",iRow,
           rowPrimal[iRow],rowDual[iRow]);

  int numberColumns = model.numberColumns();
  double * columnPrimal = model.primalColumnSolution();
  double * columnDual = model.dualColumnSolution();

  int iColumn;

  for (iColumn=0;iColumn<numberColumns;iColumn++)
    printf("Column %d, primal %g, dual %g\n",iColumn,
           columnPrimal[iColumn],columnDual[iColumn]);



  return 0;
}