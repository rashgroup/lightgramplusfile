.class public Lcom/coremedia/iso/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field private static final DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coremedia/iso/Hex;->DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static encodeHex([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coremedia/iso/Hex;->encodeHex([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BI)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    array-length v3, p0

    shl-int/lit8 v2, v3, 0x1

    if-lez p1, :cond_0

    div-int v0, v3, p1

    :goto_0
    add-int/2addr v0, v2

    new-array v4, v0, [C

    move v2, v1

    :goto_1
    if-lt v2, v3, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    rem-int v0, v2, p1

    if-nez v0, :cond_2

    if-lez v1, :cond_2

    add-int/lit8 v0, v1, 0x1

    const/16 v5, 0x2d

    aput-char v5, v4, v1

    :goto_2
    add-int/lit8 v5, v0, 0x1

    sget-object v1, Lcom/coremedia/iso/Hex;->DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v1, v1, v6

    aput-char v1, v4, v0

    add-int/lit8 v1, v5, 0x1

    sget-object v0, Lcom/coremedia/iso/Hex;->DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v0, v0, v6

    aput-char v0, v4, v5

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method
