.class public final Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;
.super Ljava/lang/Object;
.source "TtmlParser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/text/SubtitleParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;
    }
.end annotation


# static fields
.field private static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field private static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field private static final ATTR_END:Ljava/lang/String; = "end"

.field private static final ATTR_REGION:Ljava/lang/String; = "region"

.field private static final ATTR_STYLE:Ljava/lang/String; = "style"

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field private static final DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

.field private static final DEFAULT_FRAME_RATE:I = 0x1e

.field private static final FONT_SIZE:Ljava/util/regex/Pattern;

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field private static final PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "TtmlParser"

.field private static final TTP:Ljava/lang/String; = "http://www.w3.org/ns/ttml#parameter"


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->CLOCK_TIME:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->OFFSET_TIME:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->FONT_SIZE:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    new-instance v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-direct {v0, v1, v2, v2}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;-><init>(FII)V

    sput-object v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    invoke-direct {p1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;-><init>()V

    :cond_0
    return-object p1
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "tt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "head"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "div"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "span"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "br"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "style"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "styling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "layout"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "region"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "metadata"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "smpte:image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "smpte:data"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "smpte:information"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseFontSize(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const-string/jumbo v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ne v1, v2, :cond_1

    sget-object v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->FONT_SIZE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid unit for fontSize: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v1, v0

    if-ne v1, v3, :cond_2

    sget-object v1, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->FONT_SIZE:Ljava/util/regex/Pattern;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "TtmlParser"

    const-string/jumbo v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid number of entries for fontSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const-string/jumbo v5, "px"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "em"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1, v2}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setFontSize(F)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    return-void

    :pswitch_1
    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1, v6}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setFontSizeUnit(I)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    goto :goto_2

    :cond_3
    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid expression for fontSize: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;
    .locals 6

    const/16 v0, 0x1e

    const-string/jumbo v1, "http://www.w3.org/ns/ttml#parameter"

    const-string/jumbo v2, "frameRate"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const-string/jumbo v2, "http://www.w3.org/ns/ttml#parameter"

    const-string/jumbo v3, "frameRateMultiplier"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v1, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v2, v1

    :cond_2
    sget-object v2, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    iget v2, v2, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->subFrameRate:I

    const-string/jumbo v3, "http://www.w3.org/ns/ttml#parameter"

    const-string/jumbo v4, "subFrameRate"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_3
    sget-object v3, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    iget v3, v3, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->tickRate:I

    const-string/jumbo v4, "http://www.w3.org/ns/ttml#parameter"

    const-string/jumbo v5, "tickRate"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_4
    new-instance v4, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-direct {v4, v0, v2, v3}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;-><init>(FII)V

    return-object v4
.end method

.method private parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;",
            ">;"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v0, "style"

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "style"

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;-><init>()V

    invoke-direct {p0, p1, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    aget-object v0, v3, v1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->chain(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    const-string/jumbo v0, "head"

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_3
    const-string/jumbo v0, "region"

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private parseNode(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;Ljava/util/Map;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;",
            ">;",
            "Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;",
            ")",
            "Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;"
        }
    .end annotation

    const-wide/16 v12, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v4, -0x1

    const-string/jumbo v10, ""

    const/4 v9, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v8

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v14, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v15, "begin"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;)J

    move-result-wide v2

    move-wide v6, v12

    move-wide/from16 v16, v2

    move-wide v2, v4

    move-wide/from16 v4, v16

    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-wide v12, v6

    move-wide v6, v4

    move-wide v4, v2

    goto :goto_0

    :cond_0
    const-string/jumbo v15, "end"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;)J

    move-result-wide v2

    move-wide v4, v6

    move-wide v6, v12

    goto :goto_1

    :cond_1
    const-string/jumbo v15, "dur"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parseTimeExpression(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;)J

    move-result-wide v2

    move-wide/from16 v16, v4

    move-wide v4, v6

    move-wide v6, v2

    move-wide/from16 v2, v16

    goto :goto_1

    :cond_2
    const-string/jumbo v15, "style"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_3

    move-object v9, v2

    :cond_3
    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v12

    goto :goto_1

    :cond_4
    const-string/jumbo v15, "region"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v10, v2

    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v12

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_9

    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    const-wide/16 v14, -0x1

    cmp-long v2, v2, v14

    if-eqz v2, :cond_9

    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v6, v2

    :cond_6
    const-wide/16 v2, -0x1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    add-long/2addr v4, v2

    move-wide/from16 v16, v4

    move-wide v4, v6

    move-wide/from16 v6, v16

    :goto_2
    const-wide/16 v2, -0x1

    cmp-long v2, v6, v2

    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_8

    add-long v6, v4, v12

    :cond_7
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v3 .. v10}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;->buildNode(Ljava/lang/String;JJLorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;

    move-result-object v2

    return-object v2

    :cond_8
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    iget-wide v2, v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    const-wide/16 v12, -0x1

    cmp-long v2, v2, v12

    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget-wide v6, v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    goto :goto_3

    :cond_9
    move-wide/from16 v16, v4

    move-wide v4, v6

    move-wide/from16 v6, v16

    goto :goto_2

    :cond_a
    move-wide v2, v4

    move-wide v4, v6

    move-wide v6, v12

    goto/16 :goto_1
.end method

.method private parseRegionAttributes(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v9, 0x42c80000    # 100.0f

    const/4 v2, 0x1

    const-string/jumbo v1, "id"

    invoke-static {p1, v1}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "origin"

    invoke-static {p1, v1}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "extent"

    invoke-static {p1, v1}, Lorg/telegram/messenger/exoplayer/util/ParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    div-float/2addr v3, v9

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    div-float/2addr v1, v9

    move v4, v3

    move v3, v1

    :goto_1
    if-eqz v6, :cond_2

    sget-object v1, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->PERCENTAGE_COORDINATES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    div-float/2addr v1, v9

    :goto_2
    cmpl-float v2, v4, v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/util/Pair;

    new-instance v2, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v3, v6, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;-><init>(FFIF)V

    invoke-direct {v0, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "TtmlParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Ignoring region with malformed origin: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v2

    move v4, v2

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v7, "TtmlParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ignoring malformed region extent: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v3, v2

    move v4, v2

    goto :goto_1
.end method

.method private parseStyleAttributes(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;
    .locals 12

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v8

    move v7, v2

    move-object v0, p2

    :goto_0
    if-ge v7, v8, :cond_4

    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    move v1, v3

    :goto_1
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    :sswitch_0
    const-string/jumbo v10, "id"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v10, "backgroundColor"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v10, "color"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string/jumbo v10, "fontFamily"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_4
    const-string/jumbo v10, "fontSize"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v10, "fontWeight"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v10, "fontStyle"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v10, "textAlign"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v10, "textDecoration"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :pswitch_0
    const-string/jumbo v1, "style"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setId(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    :try_start_0
    invoke-static {v9}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlColorParser;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setBackgroundColor(I)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v1, "TtmlParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed parsing background value: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_2
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    :try_start_1
    invoke-static {v9}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlColorParser;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setFontColor(I)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v1

    const-string/jumbo v1, "TtmlParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed parsing color value: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_3
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setFontFamily(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    :try_start_2
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    invoke-static {v9, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parseFontSize(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)V
    :try_end_2
    .catch Lorg/telegram/messenger/exoplayer/ParserException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    const-string/jumbo v1, "TtmlParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "failed parsing fontSize value: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_5
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    const-string/jumbo v1, "bold"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setBold(Z)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_6
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    const-string/jumbo v1, "italic"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setItalic(Z)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_7
    invoke-static {v9}, Lorg/telegram/messenger/exoplayer/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :cond_2
    move v1, v3

    :goto_3
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_8
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_9
    const-string/jumbo v9, "left"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_3

    :sswitch_a
    const-string/jumbo v9, "start"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_3

    :sswitch_b
    const-string/jumbo v9, "right"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_3

    :sswitch_c
    const-string/jumbo v9, "end"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v6

    goto :goto_3

    :sswitch_d
    const-string/jumbo v9, "center"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_3

    :pswitch_9
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_a
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_b
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_c
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_d
    invoke-static {v9}, Lorg/telegram/messenger/exoplayer/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_2

    :cond_3
    move v1, v3

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_e
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setLinethrough(Z)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_e
    const-string/jumbo v9, "linethrough"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_4

    :sswitch_f
    const-string/jumbo v9, "nolinethrough"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_4

    :sswitch_10
    const-string/jumbo v9, "underline"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_4

    :sswitch_11
    const-string/jumbo v9, "nounderline"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_4

    :pswitch_f
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setLinethrough(Z)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_10
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setUnderline(Z)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_11
    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->createIfNull(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;->setUnderline(Z)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_6
        -0x48ff636d -> :sswitch_3
        -0x3f826a28 -> :sswitch_7
        -0x3468fa43 -> :sswitch_8
        -0x2bc67c59 -> :sswitch_5
        0xd1b -> :sswitch_0
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_4
        0x4cb7f6d5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_d
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_d
        0x188db -> :sswitch_c
        0x32a007 -> :sswitch_9
        0x677c21c -> :sswitch_b
        0x68ac462 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x57195dd5 -> :sswitch_11
        -0x3d363934 -> :sswitch_10
        0x36723ff0 -> :sswitch_f
        0x641ec051 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private parseStyleIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseTimeExpression(Ljava/lang/String;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;)J
    .locals 12

    const/4 v5, 0x2

    const/4 v1, 0x1

    const-wide v10, 0x412e848000000000L    # 1000000.0

    const-wide/16 v2, 0x0

    sget-object v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->CLOCK_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v6, 0xe10

    mul-long/2addr v0, v6

    long-to-double v0, v0

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    long-to-double v6, v6

    add-double/2addr v0, v6

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v6, v6

    add-double/2addr v6, v0

    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    add-double/2addr v6, v0

    const/4 v0, 0x5

    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p1, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    :goto_1
    add-double/2addr v0, v6

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    iget v4, p1, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->subFrameRate:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p1, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    :cond_0
    add-double/2addr v0, v2

    mul-double/2addr v0, v10

    double-to-long v0, v0

    :goto_2
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->OFFSET_TIME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-wide v2, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v0, v2

    :cond_4
    :goto_3
    mul-double/2addr v0, v10

    double-to-long v0, v0

    goto :goto_2

    :cond_5
    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v2

    goto :goto_3

    :cond_6
    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    goto :goto_3

    :cond_7
    const-string/jumbo v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v2, p1, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->effectiveFrameRate:F

    float-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_3

    :cond_8
    const-string/jumbo v3, "t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p1, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;->tickRate:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_3

    :cond_9
    new-instance v0, Lorg/telegram/messenger/exoplayer/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Malformed time expression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "application/ttml+xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parse([BII)Lorg/telegram/messenger/exoplayer/text/Subtitle;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parse([BII)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlSubtitle;

    move-result-object v0

    return-object v0
.end method

.method public parse([BII)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlSubtitle;
    .locals 12

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, ""

    new-instance v1, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;

    invoke-direct {v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;-><init>()V

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v1, 0x0

    invoke-interface {v5, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    sget-object v1, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->DEFAULT_FRAME_AND_TICK_RATE:Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    move v4, v0

    :goto_0
    const/4 v0, 0x1

    if-eq v4, v0, :cond_9

    invoke-virtual {v8}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;

    if-nez v2, :cond_7

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    if-ne v4, v10, :cond_5

    const-string/jumbo v4, "tt"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v5}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parseFrameAndTickRates(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;

    move-result-object v1

    :cond_0
    invoke-static {v9}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v0, "TtmlParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Ignoring unsupported tag: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v2, 0x1

    move-object v2, v3

    move v11, v0

    move-object v0, v1

    move v1, v11

    :goto_1
    move-object v3, v2

    move v2, v1

    move-object v1, v0

    :cond_1
    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "head"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v5, v6, v7}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parseHeader(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v0, v1

    move v1, v2

    move-object v2, v3

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-direct {p0, v5, v0, v7, v1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser;->parseNode(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;Ljava/util/Map;Lorg/telegram/messenger/exoplayer/text/ttml/TtmlParser$FrameAndTickRate;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;->addChild(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;)V
    :try_end_1
    .catch Lorg/telegram/messenger/exoplayer/ParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    move-object v0, v1

    move v1, v2

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v4, "TtmlParser"

    const-string/jumbo v9, "Suppressing parser error"

    invoke-static {v4, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v0, v2, 0x1

    move-object v2, v3

    move v11, v0

    move-object v0, v1

    move v1, v11

    goto :goto_1

    :cond_5
    const/4 v9, 0x4

    if-ne v4, v9, :cond_6

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;->buildTextNode(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;->addChild(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;)V

    move-object v0, v1

    move v1, v2

    move-object v2, v3

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    if-ne v4, v0, :cond_b

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "tt"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v3, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlSubtitle;

    invoke-virtual {v8}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;

    invoke-direct {v3, v0, v6, v7}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlSubtitle;-><init>(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;)V

    move-object v0, v3

    :goto_3
    invoke-virtual {v8}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, v1

    move v1, v2

    move-object v2, v0

    move-object v0, v11

    goto :goto_1

    :cond_7
    const/4 v0, 0x2

    if-ne v4, v0, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x3

    if-ne v4, v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer/ParserException;

    const-string/jumbo v2, "Unable to parse source"

    invoke-direct {v1, v2, v0}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unexpected error when reading input."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    return-object v3

    :cond_a
    move-object v0, v3

    goto :goto_3

    :cond_b
    move-object v0, v1

    move v1, v2

    move-object v2, v3

    goto/16 :goto_1
.end method
