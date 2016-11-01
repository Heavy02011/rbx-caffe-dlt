# Start with Caffe dependencies
FROM kaixhin/caffe
MAINTAINER heavy02011

### Initial Srep ####
RUN cd /root && git clone https://github.com/Heavy02011/rbx-caffe-dlt.git


### Step 1: Compile the deconv-deep-vis-toolbox branch of caffe
# Move into Caffe repo
RUN cd /root/caffe && \
	git remote add yosinski https://github.com/yosinski/caffe.git && \
	git fetch --all && \
	git checkout --track -b deconv-deep-vis-toolbox yosinski/deconv-deep-vis-toolbox 

# < edit Makefile.config to suit your system if not already done in Step 0 >
RUN cp /root/rbx-caffe-dlt/Makefile.config /root/caffe

RUN make clean
RUN make -j
RUN make -j pycaffe


### Step 2: Install prerequisites
RUN sudo apt-get install python-opencv python-skimage --fix-missing -y


### Step 3: Download and configure Deep Visualization Toolbox code
RUN cd /root && \
	git clone https://github.com/yosinski/deep-visualization-toolbox
RUN cp /root/rbx-caffe-dlt/settings_local.py /root/deep-visualization-toolbox/models/caffenet-yos


# run deep visualization toolbox
WORKDIR /root/deep-visualization-toolbox/
##CMD /root/deep-visualization-toolbox/run_toolbox.py