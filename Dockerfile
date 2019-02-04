FROM neubiaswg5/fiji-base

RUN cd /fiji/plugins && wget -O imagescience.jar https://imagescience.org/meijering/software/download/imagescience.jar
RUN cd /fiji/plugins && wget -O FeatureJ_.jar https://imagescience.org/meijering/software/download/FeatureJ_.jar

ADD IJSpotDetection3D.ijm /fiji/macros/macro.ijm

ADD wrapper.py /app/wrapper.py

ENTRYPOINT ["python", "/app/wrapper.py"]


