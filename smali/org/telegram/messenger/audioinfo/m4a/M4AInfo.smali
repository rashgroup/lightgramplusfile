.class public Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;
.super Lorg/telegram/messenger/audioinfo/AudioInfo;
.source "M4AInfo.java"


# static fields
.field private static final ASCII:Ljava/lang/String; = "ISO8859_1"

.field static final LOGGER:Ljava/util/logging/Logger;

.field public static SL_01:Ljava/lang/String; = null

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final debugLevel:Ljava/util/logging/Level;

.field private rating:B

.field private speed:Ljava/math/BigDecimal;

.field private tempo:S

.field private volume:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    const-string/jumbo v0, "com"

    sput-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->SL_01:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;-><init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V
    .locals 3

    invoke-direct {p0}, Lorg/telegram/messenger/audioinfo/AudioInfo;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v0, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;-><init>(Ljava/io/InputStream;)V

    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "ftyp"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;->nextChild(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->ftyp(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    const-string/jumbo v1, "moov"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Input;->nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->moov(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    return-void
.end method


# virtual methods
.method data(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 8

    const/16 v7, 0x320

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x4

    const/4 v0, 0x0

    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v5, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v4}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    invoke-virtual {p1, v4}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getParent()Lorg/telegram/messenger/audioinfo/m4a/MP4Box;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Box;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v1, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v2, "\u00a9alb"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "aART"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "\u00a9ART"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string/jumbo v0, "\u00a9cmt"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v0, "\u00a9com"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v0, "\u00a9wrt"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v0, "covr"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v0, "cpil"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v0, "cprt"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_9
    const-string/jumbo v0, "\u00a9cpy"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :sswitch_a
    const-string/jumbo v0, "\u00a9day"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :sswitch_b
    const-string/jumbo v0, "disk"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v0, "gnre"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "\u00a9gen"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v0, "\u00a9grp"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v0, "\u00a9lyr"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v0, "\u00a9nam"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v0, "rtng"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v0, "tmpo"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v0, "trkn"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->album:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_1
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->albumArtist:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_2
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->artist:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_3
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->comment:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->composer:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->composer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->composer:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_5
    :try_start_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readBytes()[B

    move-result-object v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x1

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    array-length v3, v1

    invoke-static {v1, v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, v7, :cond_4

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v0, v7, :cond_5

    :cond_4
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    if-le v0, v7, :cond_5

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v0, 0x0

    array-length v3, v1

    invoke-static {v1, v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42f00000    # 120.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v0

    float-to-int v0, v0

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->smallCover:Landroid/graphics/Bitmap;

    :goto_3
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->smallCover:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->smallCover:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->cover:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->smallCover:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :pswitch_6
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->compilation:Z

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->copyright:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->copyright:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_7
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->copyright:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_8
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x4

    :try_start_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->year:S
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->disc:S

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->discs:S

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_8
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getGenre(I)Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Genre;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_a
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->genre:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_c
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->grouping:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_d
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->lyrics:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_e
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->title:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readByte()B

    move-result v0

    iput-byte v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->rating:B

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->tempo:S

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->track:S

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->tracks:S

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2d1642 -> :sswitch_1
        0x2eb028 -> :sswitch_6
        0x2eb250 -> :sswitch_7
        0x2eb36f -> :sswitch_8
        0x2f0d9d -> :sswitch_b
        0x307d5a -> :sswitch_c
        0x35937b -> :sswitch_11
        0x366238 -> :sswitch_12
        0x367461 -> :sswitch_13
        0x4dd0fa -> :sswitch_2
        0x4e4c4e -> :sswitch_0
        0x4e5401 -> :sswitch_3
        0x4e5438 -> :sswitch_4
        0x4e5463 -> :sswitch_9
        0x4e5653 -> :sswitch_a
        0x4e6207 -> :sswitch_d
        0x4e639c -> :sswitch_e
        0x4e773c -> :sswitch_f
        0x4e7bd1 -> :sswitch_10
        0x4e9fb0 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method ftyp(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    const-string/jumbo v1, "ISO8859_1"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    const-string/jumbo v1, "M4V|MP4|mp42|isom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": brand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (experimental)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->version:Ljava/lang/String;

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    const-string/jumbo v1, "M4A|M4P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": brand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (expected M4A or M4P)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRating()B
    .locals 1

    iget-byte v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->rating:B

    return v0
.end method

.method public getSpeed()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->speed:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getTempo()S
    .locals 1

    iget-short v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->tempo:S

    return v0
.end method

.method public getVolume()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->volume:Ljava/math/BigDecimal;

    return-object v0
.end method

.method ilst(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 6

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getRemaining()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v2, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ": contains no value"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->data(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method mdhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 12

    const/4 v3, 0x1

    const-wide/16 v10, 0x3e8

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readByte()B

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    if-ne v1, v3, :cond_2

    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v2

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readLong()J

    move-result-wide v0

    :goto_1
    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    mul-long/2addr v0, v10

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    :cond_4
    sget-object v3, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    mul-long v6, v10, v0

    int-to-long v8, v2

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    sget-object v3, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mdhd: duration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-long/2addr v0, v10

    int-to-long v6, v2

    div-long/2addr v0, v6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2
.end method

.method mdia(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "mdhd"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->mdhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    return-void
.end method

.method meta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    const-string/jumbo v1, "ilst"

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->ilst(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    :cond_2
    return-void
.end method

.method moov(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 4

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->mvhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_0

    :sswitch_0
    const-string/jumbo v3, "mvhd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "trak"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "udta"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->trak(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->udta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    goto :goto_0

    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x335465 -> :sswitch_0
        0x367328 -> :sswitch_1
        0x36b53c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method mvhd(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 12

    const/4 v3, 0x1

    const-wide/16 v10, 0x3e8

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readByte()B

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    if-ne v1, v3, :cond_2

    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->skip(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v2

    if-ne v1, v3, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readLong()J

    move-result-wide v0

    :goto_1
    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    mul-long/2addr v0, v10

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    :cond_1
    :goto_2
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readIntegerFixedPoint()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->speed:Ljava/math/BigDecimal;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readShortFixedPoint()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->volume:Ljava/math/BigDecimal;

    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->readInt()I

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    :cond_4
    sget-object v3, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    mul-long v6, v10, v0

    int-to-long v8, v2

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    sget-object v3, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v4, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mvhd: duration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->duration:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-long/2addr v0, v10

    int-to-long v6, v2

    div-long/2addr v0, v6

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2
.end method

.method trak(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "mdia"

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChildUpTo(Ljava/lang/String;)Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->mdia(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    return-void
.end method

.method udta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->LOGGER:Ljava/util/logging/Logger;

    iget-object v1, p0, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->debugLevel:Ljava/util/logging/Level;

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->nextChild()Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;

    move-result-object v0

    const-string/jumbo v1, "meta"

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/audioinfo/m4a/M4AInfo;->meta(Lorg/telegram/messenger/audioinfo/m4a/MP4Atom;)V

    :cond_1
    return-void
.end method
