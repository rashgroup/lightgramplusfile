.class final Lorg/telegram/messenger/exoplayer/text/TtmlRenderUtil;
.super Ljava/lang/Object;
.source "TtmlRenderUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStylesToSpan(Landroid/text/SpannableStringBuilder;IILorg/telegram/messenger/exoplayer/text/TtmlStyle;)V
    .locals 4

    const/4 v2, -0x1

    const/16 v3, 0x21

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getStyle()I

    move-result v0

    if-eq v0, v2, :cond_0

    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getStyle()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->hasFontColor()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getFontColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->hasBackgroundColor()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getFontSizeUnit()I

    move-result v0

    if-eq v0, v2, :cond_7

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getFontSizeUnit()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_7
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getFontSize()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :pswitch_1
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getFontSize()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :pswitch_2
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p3}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->getFontSize()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "\r\n"

    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " *\n *"

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[ \t\\x0B\u000c\r]+"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static endParagraph(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    const/16 v3, 0xa

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_1
    return-void
.end method

.method public static resolveStyle(Lorg/telegram/messenger/exoplayer/text/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/text/TtmlStyle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/text/TtmlStyle;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer/text/TtmlStyle;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-nez p0, :cond_2

    array-length v1, p1

    if-ne v1, v2, :cond_2

    aget-object v0, p1, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    move-object p0, v0

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    array-length v1, p1

    if-le v1, v2, :cond_3

    new-instance p0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;-><init>()V

    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->chain(Lorg/telegram/messenger/exoplayer/text/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    array-length v1, p1

    if-ne v1, v2, :cond_4

    aget-object v0, p1, v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->chain(Lorg/telegram/messenger/exoplayer/text/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    move-result-object p0

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v2, :cond_0

    array-length v2, p1

    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/text/TtmlStyle;->chain(Lorg/telegram/messenger/exoplayer/text/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/TtmlStyle;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
