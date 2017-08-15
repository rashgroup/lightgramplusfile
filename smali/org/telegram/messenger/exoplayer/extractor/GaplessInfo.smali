.class public final Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
.super Ljava/lang/Object;
.source "GaplessInfo.java"


# static fields
.field private static final GAPLESS_COMMENT_ID:Ljava/lang/String; = "iTunSMPB"

.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final encoderDelay:I

.field public final encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->encoderDelay:I

    iput p2, p0, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->encoderPadding:I

    return-void
.end method

.method public static createFromComment(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "iTunSMPB"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    new-instance v1, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createFromXingHeaderValue(I)Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;
    .locals 3

    shr-int/lit8 v1, p0, 0xc

    and-int/lit16 v2, p0, 0xfff

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/extractor/GaplessInfo;-><init>(II)V

    goto :goto_0
.end method
