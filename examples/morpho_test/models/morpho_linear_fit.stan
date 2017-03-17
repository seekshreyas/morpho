/*
* MC morpho testing model
* -------------------------------------------------------------------
* Author: Mathieu Guigue <mathieu.guigue@pnnl.gov>
*
* Date: March 17 2017
*
* Purpose:
*
* Generic and simple linear model for testing
*
*/

data{

	int<lower=0> N;
  vector[N] x;
  vector[N] y;

}

transformed data{}

parameters{

	real slope;
	real intercept;
	real<lower=0> sigma;

}

transformed parameters {}


model{

	y ~ normal(slope * x + intercept, sigma);

}

generated quantities{

	real variance_y;
	variance_y = sigma * sigma;

}
