.class public Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;
.super Lorg/telegram/tgnet/TLRPC$PhotoSize;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_photoSizeEmpty"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0xe17e23c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhotoSize;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/telegram/tgnet/AbstractSerializedData;->getPosition()I

    move-result v2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    const-string/jumbo v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    const-string/jumbo v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    const-string/jumbo v3, "m"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    const-string/jumbo v3, "y"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    const-string/jumbo v3, "w"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "s"

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    instance-of v1, p1, Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/NativeByteBuffer;

    move-object v1, v0

    invoke-virtual {v1, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v1, "s"

    iput-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    instance-of v1, p1, Lorg/telegram/tgnet/NativeByteBuffer;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    goto :goto_0
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    sget v0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
