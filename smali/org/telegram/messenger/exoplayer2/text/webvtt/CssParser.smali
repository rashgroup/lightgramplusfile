.class final Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;
.super Ljava/lang/Object;
.source "CssParser.java"


# static fields
.field private static final BLOCK_END:Ljava/lang/String; = "}"

.field private static final BLOCK_START:Ljava/lang/String; = "{"

.field private static final PROPERTY_BGCOLOR:Ljava/lang/String; = "background-color"

.field private static final PROPERTY_FONT_FAMILY:Ljava/lang/String; = "font-family"

.field private static final PROPERTY_FONT_STYLE:Ljava/lang/String; = "font-style"

.field private static final PROPERTY_FONT_WEIGHT:Ljava/lang/String; = "font-weight"

.field private static final PROPERTY_TEXT_DECORATION:Ljava/lang/String; = "text-decoration"

.field private static final VALUE_BOLD:Ljava/lang/String; = "bold"

.field private static final VALUE_ITALIC:Ljava/lang/String; = "italic"

.field private static final VALUE_UNDERLINE:Ljava/lang/String; = "underline"

.field private static final VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final stringBuilder:Ljava/lang/StringBuilder;

.field private final styleInput:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\\[voice=\"([^\"]*)\"\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->styleInput:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private applySelectorToStyle(Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/String;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v5, :cond_3

    sget-object v1, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->VOICE_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetVoice(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_3
    const-string/jumbo v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_4

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetTagName(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetId(Ljava/lang/String;)V

    :goto_1
    array-length v1, v0

    if-le v1, v4, :cond_0

    array-length v1, v0

    invoke-static {v0, v4, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetClasses([Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setTargetTagName(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static maybeSkipComment(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 6

    const/16 v5, 0x2f

    const/16 v4, 0x2a

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v2, v1, 0x2

    if-gt v2, v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-ne v1, v5, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-ne v2, v4, :cond_2

    move v2, v1

    :goto_0
    add-int/lit8 v1, v2, 0x1

    if-ge v1, v0, :cond_1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    int-to-char v2, v2

    if-ne v2, v4, :cond_0

    aget-byte v2, v3, v1

    int-to-char v2, v2

    if-ne v2, v5, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static maybeSkipWhitespace(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-static {p0, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->peekCharAtPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseIdentifier(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v3, v3, v1

    int-to-char v3, v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_3

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_3

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_3

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static parseNextToken(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->skipWhitespaceAndComments(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parseIdentifier(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static parsePropertyValue(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v4, "}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static parseSelector(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->skipWhitespaceAndComments(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "::cue"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "{"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const-string/jumbo v1, ""

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->readCueTarget(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p0, p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static parseStyleDeclaration(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/StringBuilder;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->skipWhitespaceAndComments(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    invoke-static {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parseIdentifier(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, ":"

    invoke-static {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->skipWhitespaceAndComments(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    invoke-static {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parsePropertyValue(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    invoke-static {p0, p2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    const-string/jumbo v2, "color"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setFontColor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "background-color"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/ColorParser;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setBackgroundColor(I)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "text-decoration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v0, "underline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setUnderline(Z)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "font-family"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setFontFamily(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v2, "font-weight"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v0, "bold"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setBold(Z)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "font-style"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "italic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;->setItalic(Z)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    goto/16 :goto_0
.end method

.method private static peekCharAtPosition(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;I)C
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v0, v0, p1

    int-to-char v0, v0

    return v0
.end method

.method private static readCueTarget(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v4

    move v2, v0

    move v0, v1

    :goto_0
    if-ge v2, v4, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v0, v0, v2

    int-to-char v0, v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static skipStyleBlock(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method static skipWhitespaceAndComments(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 3

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->maybeSkipWhitespace(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->maybeSkipComment(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public parseBlock(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->skipStyleBlock(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->styleInput:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->reset([BI)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->styleInput:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->styleInput:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parseSelector(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "{"

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->styleInput:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;-><init>()V

    invoke-direct {p0, v0, v2}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->applySelectorToStyle(Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/String;)V

    move v2, v3

    move-object v4, v1

    :cond_3
    :goto_1
    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->styleInput:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->styleInput:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v2, v4}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parseNextToken(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string/jumbo v2, "}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_3

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->styleInput:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v5, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->styleInput:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v5, v0, v6}, Lorg/telegram/messenger/exoplayer2/text/webvtt/CssParser;->parseStyleDeclaration(Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer2/text/webvtt/WebvttCssStyle;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2

    :cond_6
    const-string/jumbo v2, "}"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0
.end method
