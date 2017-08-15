.class Lorg/telegram/messenger/FileUploadOperation$3;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/FileUploadOperation;

.field final synthetic val$currentRequestBytes:I

.field final synthetic val$currentRequestBytesOffset:J

.field final synthetic val$currentRequestIv:[B

.field final synthetic val$currentRequestPartNum:I

.field final synthetic val$requestNumFinal:I

.field final synthetic val$requestSize:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/FileUploadOperation;I[BIIIJ)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iput p2, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestSize:I

    iput-object p3, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestIv:[B

    iput p4, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestNumFinal:I

    iput p5, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestBytes:I

    iput p6, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestPartNum:I

    iput-wide p7, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestBytesOffset:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    const/4 v11, 0x3

    const/16 v10, 0x20

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_4

    iget v0, p1, Lorg/telegram/tgnet/TLObject;->networkType:I

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v1

    const/high16 v2, 0x3000000

    if-ne v1, v2, :cond_5

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestSize:I

    int-to-long v4, v2

    invoke-virtual {v1, v0, v11, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestIv:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1000(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestIv:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1100(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestNumFinal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$1200(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v4

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestBytes:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    # setter for: Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J
    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/FileUploadOperation;->access$1202(Lorg/telegram/messenger/FileUploadOperation;J)J

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1300(Lorg/telegram/messenger/FileUploadOperation;)Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J
    invoke-static {v2}, Lorg/telegram/messenger/FileUploadOperation;->access$1200(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v4

    long-to-float v2, v4

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J
    invoke-static {v4}, Lorg/telegram/messenger/FileUploadOperation;->access$300(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v2, v4

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didChangedUploadProgress(Lorg/telegram/messenger/FileUploadOperation;F)V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # operator-- for: Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$810(Lorg/telegram/messenger/FileUploadOperation;)I

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1400(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$800(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->state:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1500(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    if-ne v0, v8, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # setter for: Lorg/telegram/messenger/FileUploadOperation;->state:I
    invoke-static {v0, v11}, Lorg/telegram/messenger/FileUploadOperation;->access$1502(Lorg/telegram/messenger/FileUploadOperation;I)I

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->key:[B
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1600(Lorg/telegram/messenger/FileUploadOperation;)[B

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1700(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputFileBig;-><init>()V

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$InputFile;->parts:I

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2000(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v0

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$InputFile;->id:J

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2100(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$2100(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$InputFile;->name:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1300(Lorg/telegram/messenger/FileUploadOperation;)Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    move-object v4, v3

    move-object v5, v3

    invoke-interface/range {v0 .. v5}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFinishUploadingFile(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[B)V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # invokes: Lorg/telegram/messenger/FileUploadOperation;->cleanup()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2200(Lorg/telegram/messenger/FileUploadOperation;)V

    :cond_2
    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/high16 v1, 0x3000000

    if-ne v0, v1, :cond_15

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    invoke-virtual {v0, v1, v11, v8}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v0

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v1

    const/high16 v2, 0x2000000

    if-ne v1, v2, :cond_6

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    const/4 v2, 0x2

    iget v4, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestSize:I

    int-to-long v4, v4

    invoke-virtual {v1, v0, v2, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v1

    const/high16 v2, 0x1000000

    if-ne v1, v2, :cond_7

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    const/4 v2, 0x4

    iget v4, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestSize:I

    int-to-long v4, v4

    invoke-virtual {v1, v0, v2, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v1

    const/high16 v2, 0x4000000

    if-ne v1, v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    const/4 v2, 0x5

    iget v4, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$requestSize:I

    int-to-long v4, v4

    invoke-virtual {v1, v0, v2, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    goto/16 :goto_1

    :cond_8
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputFile;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputFile;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%32s"

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;
    invoke-static {v6}, Lorg/telegram/messenger/FileUploadOperation;->access$1800(Lorg/telegram/messenger/FileUploadOperation;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-direct {v5, v8, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$InputFile;->md5_checksum:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1700(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileBigUploaded;-><init>()V

    :goto_5
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->parts:I

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2000(Lorg/telegram/messenger/FileUploadOperation;)J

    move-result-wide v0

    iput-wide v0, v4, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->id:J

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2300(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->key_fingerprint:I

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1300(Lorg/telegram/messenger/FileUploadOperation;)Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->key:[B
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1600(Lorg/telegram/messenger/FileUploadOperation;)[B

    move-result-object v5

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->iv:[B
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2400(Lorg/telegram/messenger/FileUploadOperation;)[B

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFinishUploadingFile(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/tgnet/TLRPC$InputFile;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;[B[B)V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # invokes: Lorg/telegram/messenger/FileUploadOperation;->cleanup()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2200(Lorg/telegram/messenger/FileUploadOperation;)V

    goto/16 :goto_3

    :cond_a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileUploaded;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%32s"

    new-array v2, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;
    invoke-static {v6}, Lorg/telegram/messenger/FileUploadOperation;->access$1800(Lorg/telegram/messenger/FileUploadOperation;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-direct {v5, v8, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;->md5_checksum:Ljava/lang/String;

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$800(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$200(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2500(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # setter for: Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I
    invoke-static {v0, v9}, Lorg/telegram/messenger/FileUploadOperation;->access$2502(Lorg/telegram/messenger/FileUploadOperation;I)I

    :cond_c
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestPartNum:I

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$2600(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # operator++ for: Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2608(Lorg/telegram/messenger/FileUploadOperation;)I

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestBytesOffset:J

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestIv:[B

    move-object v1, v0

    :goto_6
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2700(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I
    invoke-static {v4}, Lorg/telegram/messenger/FileUploadOperation;->access$2600(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;

    if-eqz v0, :cond_d

    # getter for: Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->bytesOffset:J
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$2800(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)J

    move-result-wide v2

    # getter for: Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->iv:[B
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$2900(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$2700(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I
    invoke-static {v4}, Lorg/telegram/messenger/FileUploadOperation;->access$2600(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # operator++ for: Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$2608(Lorg/telegram/messenger/FileUploadOperation;)I

    move-object v1, v0

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1700(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-wide/32 v4, 0x100000

    rem-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_f

    :cond_e
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1700(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2500(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    if-nez v0, :cond_11

    :cond_f
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$000(Lorg/telegram/messenger/FileUploadOperation;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;
    invoke-static {v5}, Lorg/telegram/messenger/FileUploadOperation;->access$3000(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_uploaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z
    invoke-static {v2}, Lorg/telegram/messenger/FileUploadOperation;->access$3100(Lorg/telegram/messenger/FileUploadOperation;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;
    invoke-static {v3}, Lorg/telegram/messenger/FileUploadOperation;->access$3000(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_ivc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_11
    :goto_7
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # operator++ for: Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2508(Lorg/telegram/messenger/FileUploadOperation;)I

    :cond_12
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # invokes: Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$100(Lorg/telegram/messenger/FileUploadOperation;)V

    goto/16 :goto_3

    :cond_13
    new-instance v0, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-direct {v0, v1, v3}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;-><init>(Lorg/telegram/messenger/FileUploadOperation;Lorg/telegram/messenger/FileUploadOperation$1;)V

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestBytesOffset:J

    # setter for: Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->bytesOffset:J
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$2802(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;J)J

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestIv:[B

    if-eqz v1, :cond_14

    new-array v1, v10, [B

    # setter for: Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->iv:[B
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$2902(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;[B)[B

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestIv:[B

    # getter for: Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->iv:[B
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;->access$2900(Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;)[B

    move-result-object v2

    invoke-static {v1, v9, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Ljava/util/HashMap;
    invoke-static {v1}, Lorg/telegram/messenger/FileUploadOperation;->access$2700(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation$3;->val$currentRequestPartNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_15
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_16

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_4

    :cond_16
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_17

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_4

    :cond_17
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->currentType:I
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$900(Lorg/telegram/messenger/FileUploadOperation;)I

    move-result v0

    const/high16 v1, 0x4000000

    if-ne v0, v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto/16 :goto_4

    :cond_18
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # getter for: Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$1300(Lorg/telegram/messenger/FileUploadOperation;)Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation$3;->this$0:Lorg/telegram/messenger/FileUploadOperation;

    # invokes: Lorg/telegram/messenger/FileUploadOperation;->cleanup()V
    invoke-static {v0}, Lorg/telegram/messenger/FileUploadOperation;->access$2200(Lorg/telegram/messenger/FileUploadOperation;)V

    goto/16 :goto_4
.end method
