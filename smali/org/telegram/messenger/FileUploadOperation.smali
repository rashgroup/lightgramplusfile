.class public Lorg/telegram/messenger/FileUploadOperation;
.super Ljava/lang/Object;
.source "FileUploadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;,
        Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;
    }
.end annotation


# instance fields
.field private cachedResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/FileUploadOperation$UploadCachedResult;",
            ">;"
        }
    .end annotation
.end field

.field private currentFileId:J

.field private currentPartNum:I

.field private currentType:I

.field private currentUploadRequetsCount:I

.field private delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

.field private estimatedSize:I

.field private fileKey:Ljava/lang/String;

.field private fingerprint:I

.field private freeRequestIvs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private isBigFile:Z

.field private isEncrypted:Z

.field private isLastPart:Z

.field private iv:[B

.field private ivChange:[B

.field private key:[B

.field private lastSavedPartNum:I

.field private final maxRequestsCount:I

.field private mdEnc:Ljava/security/MessageDigest;

.field private preferences:Landroid/content/SharedPreferences;

.field private readBuffer:[B

.field private readBytesCount:J

.field private requestNum:I

.field private requestTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private saveInfoTimes:I

.field private started:Z

.field private state:I

.field private stream:Ljava/io/FileInputStream;

.field private totalFileSize:J

.field private totalPartsCount:I

.field private uploadChunkSize:I

.field private uploadStartTime:I

.field private uploadedBytesCount:J

.field private uploadingFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    const/16 v0, 0x8

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->maxRequestsCount:I

    const/high16 v0, 0x20000

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    iput p3, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    iput p4, p0, Lorg/telegram/messenger/FileUploadOperation;->currentType:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileUploadOperation;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/FileUploadOperation;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->startUploadRequest()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/FileUploadOperation;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    return-wide v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/FileUploadOperation;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    return-wide p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/FileUploadOperation;)Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    return v0
.end method

.method static synthetic access$1502(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/FileUploadOperation;)[B
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/FileUploadOperation;)Ljava/security/MessageDigest;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/FileUploadOperation;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    return p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    return-void
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    return v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/FileUploadOperation;)[B
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    return p1
.end method

.method static synthetic access$2508(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->saveInfoTimes:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    return v0
.end method

.method static synthetic access$2608(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/FileUploadOperation;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->cachedResults:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileUploadOperation;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide v0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/FileUploadOperation;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/FileUploadOperation;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/messenger/FileUploadOperation;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileUploadOperation;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/FileUploadOperation;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo()V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    return v0
.end method

.method static synthetic access$810(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    return v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/FileUploadOperation;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentType:I

    return v0
.end method

.method private cleanup()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "uploadinfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_uploaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_iv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_ivc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startUploadRequest()V
    .locals 14

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    const/16 v10, 0x20

    const/4 v0, 0x1

    const/4 v11, 0x0

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    if-eq v1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->started:Z

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    move v1, v11

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/16 v3, 0x20

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-eqz v2, :cond_3

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    :goto_2
    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/32 v4, 0xa00000

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    :goto_3
    const-wide/16 v2, 0x80

    iget-wide v4, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    const-wide/32 v6, 0x2ee000

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x2ee000

    div-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    const/16 v1, 0x400

    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    rem-int/2addr v1, v2

    if-eqz v1, :cond_6

    const/16 v1, 0x40

    :goto_4
    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    if-le v2, v1, :cond_5

    mul-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    :cond_6
    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    mul-int/lit16 v1, v1, 0x400

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    div-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadingFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "enc"

    :goto_5
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v1, v4

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v1, :cond_18

    iget-wide v4, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_18

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_uploaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-boolean v4, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v4, :cond_27

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_iv"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_c

    if-eqz v5, :cond_c

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    array-length v4, v4

    if-ne v4, v10, :cond_b

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    array-length v4, v4

    if-ne v4, v10, :cond_b

    const/16 v4, 0x20

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    iget-object v4, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v7, 0x0

    const/16 v9, 0x20

    invoke-static {v4, v5, v6, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, v11

    :goto_6
    if-nez v7, :cond_17

    if-eqz v1, :cond_17

    iget-boolean v4, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    const v5, 0x15180

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_d

    move v1, v11

    :cond_7
    :goto_7
    if-eqz v1, :cond_12

    cmp-long v1, v2, v12

    if-lez v1, :cond_16

    iput-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v4, v1

    div-long v4, v2, v4

    long-to-int v1, v4

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iget-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v1, :cond_10

    move v9, v11

    :goto_8
    int-to-long v0, v9

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    iget v4, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_26

    rem-int/lit8 v0, v10, 0x10

    if-eqz v0, :cond_26

    rem-int/lit8 v0, v10, 0x10

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v11

    move v6, v0

    :goto_9
    new-instance v12, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v0, v10, v6

    invoke-direct {v12, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    if-ne v10, v0, :cond_8

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_9

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1, v10}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([BII)V

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_f

    move v0, v11

    :goto_a
    if-ge v0, v6, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_a
    const-string/jumbo v1, ""

    goto/16 :goto_5

    :cond_b
    move v7, v0

    goto :goto_6

    :cond_c
    move v7, v0

    goto :goto_6

    :cond_d
    iget-boolean v4, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v4, :cond_7

    int-to-float v4, v1

    iget v5, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    int-to-float v5, v5

    const v6, 0x45a8c000    # 5400.0f

    sub-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    move v1, v11

    goto :goto_7

    :cond_e
    iget-object v0, v12, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    add-int/2addr v6, v10

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    :cond_f
    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    iget-object v1, v12, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v12}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_8

    :cond_10
    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v1, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    iget-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_ivc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    array-length v1, v1

    if-eq v1, v10, :cond_25

    :cond_11
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    :goto_b
    move v7, v0

    :cond_12
    :goto_c
    if-eqz v7, :cond_14

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_13

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v0, :cond_14

    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->storeFileUploadInfo()V

    :cond_14
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_19

    :try_start_3
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/16 v1, 0x40

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/16 v5, 0x20

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    move v0, v11

    :goto_d
    const/4 v2, 0x4

    if-ge v0, v2, :cond_19

    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I

    aget-byte v3, v1, v0

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fingerprint:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_15
    const-wide/16 v2, 0x0

    :try_start_4
    iput-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    goto/16 :goto_b

    :cond_16
    move v7, v0

    goto/16 :goto_c

    :cond_17
    move v7, v0

    goto/16 :goto_c

    :cond_18
    move v7, v0

    goto/16 :goto_c

    :catch_2
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_19
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    iput-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadedBytesCount:J

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->lastSavedPartNum:I

    :cond_1a
    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    iget v4, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    :cond_1b
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->stream:Ljava/io/FileInputStream;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    const/4 v0, -0x1

    if-eq v12, v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_24

    rem-int/lit8 v0, v12, 0x10

    if-eqz v0, :cond_24

    rem-int/lit8 v0, v12, 0x10

    rsub-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v11

    move v6, v0

    :goto_e
    new-instance v7, Lorg/telegram/tgnet/NativeByteBuffer;

    add-int v0, v12, v6

    invoke-direct {v7, v0}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadChunkSize:I

    if-ne v12, v0, :cond_1c

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-nez v0, :cond_1d

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isLastPart:Z

    :cond_1d
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->readBuffer:[B

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1, v12}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([BII)V

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v0, :cond_20

    move v0, v11

    :goto_f
    if-ge v0, v6, :cond_1e

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lorg/telegram/tgnet/NativeByteBuffer;->writeByte(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1e
    iget-object v0, v7, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    add-int/2addr v6, v12

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x20

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->freeRequestIvs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v4, v0

    :goto_10
    invoke-virtual {v7}, Lorg/telegram/tgnet/NativeByteBuffer;->rewind()V

    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->mdEnc:Ljava/security/MessageDigest;

    iget-object v1, v7, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    :cond_1f
    iget-boolean v0, p0, Lorg/telegram/messenger/FileUploadOperation;->isBigFile:Z

    if-eqz v0, :cond_22

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;-><init>()V

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_part:I

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_id:J

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->estimatedSize:I

    if-eqz v1, :cond_21

    const/4 v1, -0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    :goto_11
    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    move-object v10, v0

    :goto_12
    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    int-to-long v2, v12

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    iget v5, p0, Lorg/telegram/messenger/FileUploadOperation;->requestNum:I

    add-int/lit8 v0, v5, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestNum:I

    iget-wide v8, p0, Lorg/telegram/messenger/FileUploadOperation;->readBytesCount:J

    iget v7, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    add-int/lit8 v0, v7, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    invoke-virtual {v10}, Lorg/telegram/tgnet/TLObject;->getObjectSize()I

    move-result v0

    add-int/lit8 v3, v0, 0x4

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v13

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$3;

    move-object v2, p0

    move v6, v12

    invoke-direct/range {v1 .. v9}, Lorg/telegram/messenger/FileUploadOperation$3;-><init>(Lorg/telegram/messenger/FileUploadOperation;I[BIIIJ)V

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->currentUploadRequetsCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_23

    const/4 v0, 0x4

    :goto_13
    invoke-virtual {v13, v10, v1, v11, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;II)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_20
    move-object v4, v8

    goto :goto_10

    :cond_21
    :try_start_5
    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->totalPartsCount:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveBigFilePart;->file_total_parts:I

    goto :goto_11

    :cond_22
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;-><init>()V

    iget v1, p0, Lorg/telegram/messenger/FileUploadOperation;->currentPartNum:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_part:I

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->file_id:J

    iput-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_saveFilePart;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v10, v0

    goto :goto_12

    :cond_23
    const v0, 0x10004

    goto :goto_13

    :cond_24
    move v6, v11

    goto/16 :goto_e

    :cond_25
    move v0, v7

    goto/16 :goto_b

    :cond_26
    move v6, v11

    goto/16 :goto_9

    :cond_27
    move v7, v11

    goto/16 :goto_6
.end method

.method private storeFileUploadInfo()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/FileUploadOperation;->uploadStartTime:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/FileUploadOperation;->currentFileId:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_uploaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lorg/telegram/messenger/FileUploadOperation;->isEncrypted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_iv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->iv:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_ivc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->ivChange:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->fileKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileUploadOperation;->key:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->requestTokens:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;->didFailedUploadingFile(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-direct {p0}, Lorg/telegram/messenger/FileUploadOperation;->cleanup()V

    goto :goto_0
.end method

.method protected checkNewDataAvailable(J)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$2;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/FileUploadOperation$2;-><init>(Lorg/telegram/messenger/FileUploadOperation;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getTotalFileSize()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/FileUploadOperation;->totalFileSize:J

    return-wide v0
.end method

.method public setDelegate(Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileUploadOperation;->delegate:Lorg/telegram/messenger/FileUploadOperation$FileUploadOperationDelegate;

    return-void
.end method

.method public start()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileUploadOperation;->state:I

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileUploadOperation$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileUploadOperation$1;-><init>(Lorg/telegram/messenger/FileUploadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
