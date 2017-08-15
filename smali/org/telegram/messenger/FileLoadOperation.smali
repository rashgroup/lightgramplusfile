.class public Lorg/telegram/messenger/FileLoadOperation;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;,
        Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    }
.end annotation


# static fields
.field private static final bigFileSizeFrom:I = 0x100000

.field private static final downloadChunkSize:I = 0x8000

.field private static final downloadChunkSizeBig:I = 0x20000

.field private static final maxDownloadRequests:I = 0x4

.field private static final maxDownloadRequestsBig:I = 0x2

.field private static final stateDownloading:I = 0x1

.field private static final stateFailed:I = 0x2

.field private static final stateFinished:I = 0x3

.field private static final stateIdle:I


# instance fields
.field private bytesCountPadding:I

.field private cacheFileFinal:Ljava/io/File;

.field private cacheFileTemp:Ljava/io/File;

.field private cacheIvTemp:Ljava/io/File;

.field private currentDownloadChunkSize:I

.field private currentMaxDownloadRequests:I

.field private currentType:I

.field private datacenter_id:I

.field private delayedRequestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

.field private downloadedBytes:I

.field private ext:Ljava/lang/String;

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private fiv:Ljava/io/RandomAccessFile;

.field private isForceRequest:Z

.field private iv:[B

.field private key:[B

.field private location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

.field private nextDownloadOffset:I

.field private renameRetryCount:I

.field private requestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestsCount:I

.field private started:Z

.field private volatile state:I

.field private storePath:Ljava/io/File;

.field private tempPath:Ljava/io/File;

.field private totalBytesCount:I

.field private webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 8

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    :try_start_0
    instance-of v3, p1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-eqz v3, :cond_5

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    const/16 v3, 0x20

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    :cond_0
    :goto_0
    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    rem-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    rem-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x10

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    iget v4, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ne v3, v0, :cond_6

    :cond_2
    const-string/jumbo v3, ""

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    :goto_1
    const-string/jumbo v3, "audio/ogg"

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, 0x3000000

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v2, :cond_4

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_3
    :goto_3
    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    :cond_4
    :goto_4
    return-void

    :cond_5
    instance-of v3, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v3, :cond_0

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-direct {p0, v2, v1}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_4

    :cond_6
    :try_start_1
    iget-object v4, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "video/mp4"

    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v3, 0x2000000

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_2

    :cond_8
    const/high16 v3, 0x4000000

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_2

    :sswitch_0
    const-string/jumbo v4, "video/mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_3

    :sswitch_1
    const-string/jumbo v4, "audio/ogg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_3

    :pswitch_0
    const-string/jumbo v0, ".mp4"

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_4

    :pswitch_1
    const-string/jumbo v0, ".ogg"

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto :goto_4

    :cond_9
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0xb26cbd6 -> :sswitch_1
        0x4f62635d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    :cond_0
    :goto_0
    const/high16 v0, 0x1000000

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    iput p3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-eqz p2, :cond_2

    :goto_1
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    return-void

    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "jpg"

    goto :goto_1
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->access_hash:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->access_hash:J

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->size:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getExtensionByMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x1000000

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v2, "audio/ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3000000

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x2000000

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    :cond_2
    const/high16 v1, 0x4000000

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/FileLoadOperation;)Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    return v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileLoadOperation;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cleanup()V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    :try_start_3
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    move v1, v2

    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    if-eqz v3, :cond_3

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    :cond_2
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    if-eqz v3, :cond_2

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->disableFree:Z

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return-void
.end method

.method private onFail(ZI)V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eqz p1, :cond_0

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$4;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$4;-><init>(Lorg/telegram/messenger/FileLoadOperation;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    invoke-interface {v0, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    goto :goto_0
.end method

.method private onFinishLoadingFile(Z)V
    .locals 4

    const/4 v2, 0x3

    const/4 v3, 0x1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to rename temp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to final = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " retry = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    if-ge v0, v2, :cond_4

    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$3;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    :cond_5
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "finished downloading file to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {v0, p0, v1}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v1, 0x3000000

    if-ne v0, v1, :cond_7

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_9

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v1, 0x4000000

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto/16 :goto_0
.end method

.method private processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    if-nez p2, :cond_11

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-ne v0, v9, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    if-eqz v0, :cond_1

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->disableFree:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v7, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    if-eqz v0, :cond_4

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    move-object v10, v0

    :goto_1
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V

    goto :goto_0

    :cond_4
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    move-object v10, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_d

    :cond_6
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_7

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-gt v0, v1, :cond_d

    :cond_7
    move v8, v9

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v0, :cond_8

    iget-object v0, v10, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v6

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    if-eqz v8, :cond_8

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    if-eqz v0, :cond_8

    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    sub-int/2addr v0, v1

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/NativeByteBuffer;->limit(I)V

    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-object v1, v10, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_a
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_b

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-ne v0, v9, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;F)V

    :cond_b
    move v1, v7

    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v1

    if-eqz v1, :cond_e

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    :cond_c
    :goto_4
    if-eqz v8, :cond_10

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V

    goto/16 :goto_0

    :cond_d
    move v8, v7

    goto/16 :goto_2

    :cond_e
    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->disableFree:Z

    # getter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    invoke-static {v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_4

    :cond_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_10
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_11
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v2, "FILE_MIGRATE_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v2, "FILE_MIGRATE_"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ""

    invoke-virtual {v2, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    :try_start_2
    invoke-virtual {v2}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_5
    if-nez v0, :cond_12

    invoke-direct {p0, v7, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    iput v7, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "OFFSET_INVALID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :try_start_3
    invoke-direct {p0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    invoke-direct {p0, v7, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_0

    :cond_14
    invoke-direct {p0, v7, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v1, "RETRY_LIMIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x2

    invoke-direct {p0, v7, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " local_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " access_hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " volume_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " secret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_17
    :goto_6
    invoke-direct {p0, v7, v7}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " access_hash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->access_hash:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_6

    :catch_2
    move-exception v1

    goto/16 :goto_5
.end method

.method private startDownloadRequest()V
    .locals 15

    const/4 v3, 0x0

    const v12, 0x10002

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-ne v0, v9, :cond_1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    if-lt v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_a

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v8, v0

    :goto_0
    move v13, v10

    :goto_1
    if-ge v13, v8, :cond_1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_3

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-ge v0, v1, :cond_1

    :cond_3
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_4

    add-int/lit8 v0, v8, -0x1

    if-eq v13, v0, :cond_4

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_5

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lt v0, v1, :cond_5

    :cond_4
    move v7, v9

    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-eqz v0, :cond_7

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->location:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->offset:I

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->limit:I

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    move v0, v11

    :goto_3
    move v6, v0

    move v0, v1

    move-object v1, v2

    :goto_4
    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v4, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    new-instance v14, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    invoke-direct {v14, v3}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;-><init>(Lorg/telegram/messenger/FileLoadOperation$1;)V

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # setter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I
    invoke-static {v14, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1002(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$5;

    invoke-direct {v2, p0, v14}, Lorg/telegram/messenger/FileLoadOperation$5;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    iget-boolean v4, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    if-eqz v4, :cond_9

    const/16 v4, 0x20

    :goto_5
    or-int/lit8 v4, v4, 0x2

    iget v5, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;IIIZ)I

    move-result v0

    # setter for: Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I
    invoke-static {v14, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$702(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_1

    :cond_5
    move v7, v10

    goto :goto_2

    :cond_6
    move v0, v12

    goto :goto_3

    :cond_7
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iput-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->offset:I

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    move v0, v11

    :goto_6
    move v6, v0

    move v0, v1

    move-object v1, v2

    goto :goto_4

    :cond_8
    move v0, v12

    goto :goto_6

    :cond_9
    move v4, v10

    goto :goto_5

    :cond_a
    move v8, v9

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoadOperation$2;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentType()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isForceRequest()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return v0
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    return-void
.end method

.method public setForceRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return-void
.end method

.method public setPaths(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    return-void
.end method

.method public start()Z
    .locals 11

    const/high16 v10, 0x100000

    const-wide/16 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-nez v0, :cond_1

    invoke-direct {p0, v5, v4}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".iv"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lt v3, v10, :cond_e

    const/high16 v3, 0x20000

    :goto_2
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lt v3, v10, :cond_f

    const/4 v3, 0x2

    :goto_3
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    new-instance v3, Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    iput v5, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    invoke-direct {v3, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    int-to-long v2, v2

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    mul-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    :cond_4
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start loading file to temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " final = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    if-eqz v0, :cond_6

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    const-string/jumbo v2, "rws"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v2, v0, v8

    if-lez v2, :cond_10

    const-wide/16 v2, 0x20

    rem-long/2addr v0, v2

    cmp-long v0, v0, v8

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    const-string/jumbo v2, "rws"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_11

    invoke-direct {p0, v5, v4}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    move v0, v4

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    if-eqz v1, :cond_b

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    const-wide/32 v6, -0x80000000

    cmp-long v1, v2, v6

    if-eqz v1, :cond_9

    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    if-nez v1, :cond_a

    :cond_9
    invoke-direct {p0, v5, v4}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    move v0, v4

    goto/16 :goto_0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".iv"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_d

    :cond_c
    invoke-direct {p0, v5, v4}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    move v0, v4

    goto/16 :goto_0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".iv"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    const v3, 0x8000

    goto/16 :goto_2

    :cond_f
    const/4 v3, 0x4

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    goto/16 :goto_4

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_11
    iput-boolean v5, p0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoadOperation$1;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :goto_6
    move v0, v5

    goto/16 :goto_0

    :cond_12
    iput-boolean v5, p0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    const/4 v0, 0x0

    :try_start_3
    invoke-direct {p0, v0}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-direct {p0, v5, v4}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_6
.end method

.method public wasStarted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    return v0
.end method
