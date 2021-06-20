FROM public.ecr.aws/lambda/provided:al2 as build
RUN yum install -y golang
RUN go env -w GOPROXY=direct
COPY ./app ./
RUN go mod download
RUN go build -o /main

FROM public.ecr.aws/lambda/provided:al2
COPY --from=build /main /main
COPY ./entry.sh /
RUN chmod 755 /entry.sh
ENTRYPOINT [ "/entry.sh", "/main" ]
