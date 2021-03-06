.class public final Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;
.super Ljava/lang/Object;
.source "UrlTemplate.java"


# static fields
.field private static final BANDWIDTH:Ljava/lang/String; = "Bandwidth"

.field private static final BANDWIDTH_ID:I = 0x3

.field private static final DEFAULT_FORMAT_TAG:Ljava/lang/String; = "%01d"

.field private static final ESCAPED_DOLLAR:Ljava/lang/String; = "$$"

.field private static final NUMBER:Ljava/lang/String; = "Number"

.field private static final NUMBER_ID:I = 0x2

.field private static final REPRESENTATION:Ljava/lang/String; = "RepresentationID"

.field private static final REPRESENTATION_ID:I = 0x1

.field private static final TIME:Ljava/lang/String; = "Time"

.field private static final TIME_ID:I = 0x4


# instance fields
.field private final identifierCount:I

.field private final identifierFormatTags:[Ljava/lang/String;

.field private final identifiers:[I

.field private final urlPieces:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->urlPieces:[Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifiers:[I

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    iput p4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierCount:I

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;
    .locals 5

    const/4 v2, 0x4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v2, [I

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->parseTemplate(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I

    move-result v3

    new-instance v4, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    return-object v4
.end method

.method private static parseTemplate(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I
    .locals 10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    aput-object v0, p1, v1

    move v0, v1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    const-string/jumbo v3, "$"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p1, v0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_0

    :cond_0
    if-eq v3, v2, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    move v2, v3

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "$$"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p1, v0

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "$"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v0

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "$"

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "RepresentationID"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    aput v5, p2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v2, ""

    aput-object v2, p1, v0

    add-int/lit8 v2, v7, 0x1

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v2, "%0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v2, "%01d"

    if-eq v8, v4, :cond_5

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "d"

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, "d"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v3, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_6
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid template: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string/jumbo v8, "Number"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_2

    :sswitch_1
    const-string/jumbo v8, "Bandwidth"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    goto :goto_2

    :sswitch_2
    const-string/jumbo v8, "Time"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v6

    goto :goto_2

    :pswitch_0
    aput v6, p2, v0

    :goto_3
    aput-object v2, p3, v0

    goto/16 :goto_1

    :pswitch_1
    const/4 v3, 0x3

    aput v3, p2, v0

    goto :goto_3

    :pswitch_2
    const/4 v3, 0x4

    aput v3, p2, v0

    goto :goto_3

    :cond_7
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x74423897 -> :sswitch_0
        0x27c6ed -> :sswitch_2
        0x246e091 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public buildUri(Ljava/lang/String;IIJ)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierCount:I

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->urlPieces:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifiers:[I

    aget v3, v3, v0

    if-ne v3, v7, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifiers:[I

    aget v3, v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v4, v4, v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifiers:[I

    aget v3, v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v4, v4, v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifiers:[I

    aget v3, v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v4, v4, v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->urlPieces:[Ljava/lang/String;

    iget v1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->identifierCount:I

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
