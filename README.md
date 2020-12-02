**Self-supervised Deep Correlation Tracking**

![self-SDCT overview figure](./pipeline.png)

## Abstract
The training of a feature extraction network typically requires abundant manually annotated training samples, making this a time-consuming and costly process. Accordingly, we propose an effective self-supervised learning-based tracker in a deep correlation framework (named: **self-SDCT**). Motivated by the forward-backward tracking consistency of a robust tracker, we propose a multi-cycle consistency loss as self-supervised information for learning feature extraction network from adjacent video frames. At the training stage, we generate pseudo-labels of consecutive video frames by forward-backward prediction under a Siamese correlation tracking framework and utilize the proposed multi-cycle consistency loss to learn a feature extraction network. Furthermore, we propose a similarity dropout strategy to enable some low-quality training sample pairs to be dropped and also adopt a cycle trajectory consistency loss in each sample pair to improve the training loss function. At the tracking stage, we employ the pre-trained feature extraction network to extract features and utilize a Siamese correlation tracking framework to locate the target using forward tracking alone. Extensive experimental results indicate that the proposed self-supervised deep correlation tracker (self-SDCT) achieves competitive tracking performance contrasted to state-of-the-art supervised and unsupervised tracking methods on standard evaluation benchmarks.
## Step by step to run demo
