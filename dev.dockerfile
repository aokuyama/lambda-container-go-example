FROM public.ecr.aws/lambda/provided:al2
RUN yum install -y golang
RUN go env -w GOPROXY=direct
