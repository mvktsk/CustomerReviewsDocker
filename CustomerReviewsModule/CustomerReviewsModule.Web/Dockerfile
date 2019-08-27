#Depending on the operating system of the host machines(s) that will build or run the containers, the image specified in the FROM statement may need to be changed.
#For more information, please see https://aka.ms/containercompat 

FROM virtocommerce/platform/dev
ARG source
RUN mkdir c:\vc-platform\modules\customerreviewsmodule
WORKDIR /vc-platform/modules/customerreviewsmodule
COPY ${source:-obj/Docker/publish} .
