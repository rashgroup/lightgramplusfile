.class Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/FileLoadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestInfo"
.end annotation


# instance fields
.field private offset:I

.field private requestToken:I

.field private response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;

.field private responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/FileLoadOperation$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->offset:I

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->requestToken:I

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    return-object v0
.end method

.method static synthetic access$802(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_file;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->response:Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->responseWeb:Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    return-object p1
.end method
