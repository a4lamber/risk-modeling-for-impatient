# PD Model

PD (probability of default) model is a binary classification problem. Let's assume we use logistic regression to solve this problem.

## Mathematical Formulation

In this section, we will go over the full derivation of PD model

First, let's recall linear combination and rewrite it in matrix notation

$$
\begin{align}
z &= \beta_0x_0 + \beta_1 x_1 + \beta_2 x_2 + ... + \beta_n x_n
\end{align}
$$

We can rewrite linear combination in matrix form,
$$
\begin{align}
z &= \omega^{T}x_i + b
\end{align}
$$
where $\omega = {\beta_0 + \beta_1 + \beta_2 + ... + \beta_n}$, $\omega^{T}$ is the transpose of it, $b$ is the constant term


Recall the sigmoid function (logistic function),

$$
\begin{align}
y(z) = \frac{e^{z}}{1+e^{z}}
\end{align}
$$

As illustrated in the image below

![](https://media.licdn.com/dms/image/D4D12AQGIXdSG7IJCNw/article-cover_image-shrink_600_2000/0/1694183259537?e=2147483647&v=beta&t=OtnfeqwCtKTSVrdKZdyOzNYECyLLZuEUIxkTfTQ0dS0)


We can rewrite equation 3 into,


$$
\begin{align}
y &= \frac{e^{z}}{1+e^{z}}\\
1- y &= \frac{1+e^{z}}{1 + e^{z}} - \frac{e^{z}}{1+e^{z}}\\
1- y &= \frac{1}{1+e^{z}}
\end{align}
$$

We can rearrange $y$ and $1-y$ into its ratio as,

$$
\begin{align}
\frac{y}{1-y} = \frac{\frac{e^{z}}{1+e^{z}}}{\frac{1}{1+e^{z}}} = e^{z}
\end{align}
$$


We take logarithmic on both side,
$$
\begin{align}
\ln \frac{y}{1-y} = \ln e^{z} = z
\end{align}
$$

We substitute linear combination equ 2 into equ 8, we get

$$
\begin{align}
\ln \frac{y}{1-y} = \omega^{T}x + b \\
\ln \frac{P(y = 1 | x)}{P(y=0|x)} = \beta_0x_0 + \beta_1x_1 + ... + \beta_nx_n
\end{align}
$$
Where $P(y=1|x)$ is the probability of an event occur given x.


