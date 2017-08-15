.class public Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DashManifestParser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# static fields
.field private static final CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "MpdParser"


# instance fields
.field private final contentId:Ljava/lang/String;

.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "(\\d+)(?:/(\\d+))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "CC([1-4])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->contentId:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
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

.method private static checkContentTypeConsistency(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    move p0, p1

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-eq p1, v0, :cond_0

    if-ne p0, p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_1

    move-object p0, p1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Assertions;->checkState(Z)V

    goto :goto_0
.end method

.method private static getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getAudioMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->getVideoMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "application/x-rawcc"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    const-string/jumbo v1, "cea708"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo p0, "application/cea-708"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "eia608"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "cea608"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string/jumbo p0, "application/cea-608"

    goto :goto_0

    :cond_5
    move-object p0, v0

    goto :goto_0

    :cond_6
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "application/mp4"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "stpp"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo p0, "application/ttml+xml"

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "wvtt"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo p0, "application/x-mp4vtt"

    goto :goto_0

    :cond_8
    move-object p0, v0

    goto :goto_0
.end method

.method private static mimeTypeIsRawText(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "application/ttml+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static parseAccessibilityValue(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    const-string/jumbo v1, "schemeIdUri"

    invoke-static {p0, v1, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-static {p0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v1, "Accessibility"

    invoke-static {p0, v1}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_1
    const-string/jumbo v3, "urn:scte:dash:cc:cea-608:2015"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseCea608AccessibilityChannel(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "urn:scte:dash:cc:cea-708:2015"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseCea708AccessibilityChannel(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected static parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static parseCea608AccessibilityChannel(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_608_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "MpdParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to parse channel number from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static parseCea708AccessibilityChannel(Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->CEA_708_ACCESSIBILITY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "MpdParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to parse service block number from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/util/Util;->parseXsDuration(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "frameRate"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->FRAME_RATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    int-to-float v1, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    div-float p1, v1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    int-to-float p1, v1

    goto :goto_0
.end method

.method protected static parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0
.end method

.method protected static parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected static parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method


# virtual methods
.method protected buildAdaptationSet(IILjava/util/List;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    invoke-direct {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;-><init>(IILjava/util/List;)V

    return-object v0
.end method

.method protected buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;
    .locals 12

    move-object/from16 v0, p11

    invoke-static {p2, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->getSampleMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p11

    move/from16 v6, p8

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-static/range {v2 .. v10}, Lorg/telegram/messenger/exoplayer2/Format;->createVideoContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p11

    move/from16 v6, p8

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lorg/telegram/messenger/exoplayer2/Format;->createAudioContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p11

    move/from16 v6, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "application/x-rawcc"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v5, p11

    move/from16 v6, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-static/range {v2 .. v9}, Lorg/telegram/messenger/exoplayer2/Format;->createTextContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p11

    move/from16 v1, p8

    invoke-static {p1, p2, v0, v4, v1}, Lorg/telegram/messenger/exoplayer2/Format;->createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object/from16 v0, p11

    move/from16 v1, p8

    invoke-static {p1, p2, v0, v4, v1}, Lorg/telegram/messenger/exoplayer2/Format;->createContainerFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    goto :goto_0
.end method

.method protected buildMediaPresentationDescription(JJJZJJJLorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJJ",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;-><init>(JJJZJJJLorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildPeriod(Ljava/lang/String;JLjava/util/List;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v0
.end method

.method protected buildRangedUri(Ljava/lang/String;JJ)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 6

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object v0
.end method

.method protected buildRepresentation(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;"
        }
    .end annotation

    iget-object v4, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lorg/telegram/messenger/exoplayer2/Format;

    iget-object v0, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->drmSchemeDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/exoplayer2/Format;->copyWithDrmInitData(Lorg/telegram/messenger/exoplayer2/drm/DrmInitData;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v4

    :cond_0
    const-wide/16 v2, -0x1

    iget-object v5, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->baseUrl:Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->segmentBase:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;->newInstance(Ljava/lang/String;JLorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    move-result-object v0

    return-object v0
.end method

.method protected buildSegmentList(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;",
            ">;)",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method protected buildSegmentTemplate(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;",
            "JJIJ",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;",
            ")",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;"
        }
    .end annotation

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;)V

    return-object v0
.end method

.method protected buildSegmentTimelineElement(JJ)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;-><init>(JJ)V

    return-object v0
.end method

.method protected buildSingleSegmentBase(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJJJ)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 10

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    return-object v0
.end method

.method protected buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;
    .locals 1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;

    invoke-direct {v0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getContentType(Lorg/telegram/messenger/exoplayer2/Format;)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->mimeTypeIsRawText(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "application/x-rawcc"

    iget-object v2, p1, Lorg/telegram/messenger/exoplayer2/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v0

    return-object v0
.end method

.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "MPD"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v1, "inputStream does not contain a valid media presentation description"

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method protected parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;
    .locals 20

    const-string/jumbo v2, "id"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v17

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v16

    const/4 v2, 0x0

    const-string/jumbo v3, "mimeType"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const-string/jumbo v3, "codecs"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "width"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v2, "height"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v9

    const/4 v10, -0x1

    const-string/jumbo v2, "audioSamplingRate"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v11

    const/4 v2, 0x0

    const-string/jumbo v3, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, -0x1

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v14, p3

    move-object/from16 v4, p2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v2, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v15, :cond_a

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    move/from16 v3, v16

    :goto_1
    const-string/jumbo v15, "AdaptationSet"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v4, v2

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_b

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->contentId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v6, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->buildRepresentation(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Representation;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    :cond_0
    const-string/jumbo v2, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v2, v15

    move/from16 v3, v16

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "ContentComponent"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    const-string/jumbo v3, "lang"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->checkLanguageConsistency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    move/from16 v0, v16

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v2

    move v3, v2

    move v2, v15

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v14}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    move-result-object v3

    iget-object v2, v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;->format:Lorg/telegram/messenger/exoplayer2/Format;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->getContentType(Lorg/telegram/messenger/exoplayer2/Format;)I

    move-result v2

    move/from16 v0, v16

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->checkContentTypeConsistency(II)I

    move-result v2

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v2

    move v2, v15

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v2, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v10

    move v2, v15

    move/from16 v3, v16

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v2, "Accessibility"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseAccessibilityValue(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v13

    move v2, v15

    move/from16 v3, v16

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v2, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    check-cast v14, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v14

    move v2, v15

    move/from16 v3, v16

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v2, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast v14, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v14

    move v2, v15

    move/from16 v3, v16

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v2, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    check-cast v14, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v14

    move v2, v15

    move/from16 v3, v16

    goto/16 :goto_1

    :cond_9
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_a
    move v2, v15

    move/from16 v3, v16

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->buildAdaptationSet(IILjava/util/List;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v2

    return-object v2

    :cond_c
    move v15, v2

    move/from16 v16, v3

    goto/16 :goto_0
.end method

.method protected parseAdaptationSetChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method protected parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3

    const/4 v0, -0x1

    const-string/jumbo v1, "schemeIdUri"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "value"

    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v1, "AudioChannelConfiguration"

    invoke-static {p1, v1}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0
.end method

.method protected parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;
    .locals 9

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, v5

    move v1, v5

    move-object v3, v6

    move-object v4, v6

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v7, "cenc:pssh"

    invoke-static {p1, v7}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/PsshAtomUtil;->parseUuid([B)Ljava/util/UUID;

    move-result-object v1

    move-object v4, v3

    move-object v3, v1

    move v1, v2

    :cond_1
    :goto_0
    const-string/jumbo v7, "ContentProtection"

    invoke-static {p1, v7}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v1, :cond_4

    :goto_1
    return-object v6

    :cond_2
    const-string/jumbo v7, "widevine:license"

    invoke-static {p1, v7}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v0, "robustness_level"

    invoke-interface {p1, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v7, "HW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    new-instance v6, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    const-string/jumbo v1, "video/mp4"

    invoke-direct {v6, v3, v1, v4, v0}, Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[BZ)V

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "MpdParser"

    const-string/jumbo v1, "Skipped unsupported ContentProtection element"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected parseContentType(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "contentType"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "audio"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "video"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2

    const-string/jumbo v0, "sourceURL"

    const-string/jumbo v1, "range"

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseMediaPresentationDescription(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;
    .locals 34

    const-string/jumbo v6, "availabilityStartTime"

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    invoke-static {v0, v6, v8, v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseDateTime(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string/jumbo v6, "mediaPresentationDuration"

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v28

    const-string/jumbo v6, "minBufferTime"

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    const/4 v6, 0x0

    const-string/jumbo v9, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v9, "dynamic"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v13, 0x1

    :goto_0
    if-eqz v13, :cond_1

    const-string/jumbo v6, "minimumUpdatePeriod"

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    invoke-static {v0, v6, v14, v15}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v14

    :goto_1
    if-eqz v13, :cond_2

    const-string/jumbo v6, "timeShiftBufferDepth"

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-static {v0, v6, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    :goto_2
    if-eqz v13, :cond_3

    const-string/jumbo v6, "suggestedPresentationDelay"

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-static {v0, v6, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    :goto_3
    const/16 v23, 0x0

    const/4 v6, 0x0

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    if-eqz v13, :cond_4

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v24, v20

    move-object/from16 v26, p2

    move-object/from16 v21, v6

    move/from16 v20, v9

    :goto_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v6, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v10, :cond_a

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x1

    move-object v10, v9

    move/from16 v9, v20

    move-object/from16 v20, v23

    :goto_6
    const-string/jumbo v23, "MPD"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v28, v26

    if-nez v6, :cond_e

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v24, v26

    if-eqz v6, :cond_c

    move-wide/from16 v9, v24

    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    new-instance v6, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v7, "No periods found."

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_1
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_1

    :cond_2
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_2

    :cond_3
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_3

    :cond_4
    const-wide/16 v20, 0x0

    goto :goto_4

    :cond_5
    const-string/jumbo v6, "UTCTiming"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-result-object v6

    move/from16 v9, v20

    move-object/from16 v20, v6

    move v6, v10

    move-object/from16 v10, v26

    goto :goto_6

    :cond_6
    const-string/jumbo v6, "Location"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move v6, v10

    move/from16 v9, v20

    move-object/from16 v20, v23

    move-object/from16 v10, v26

    goto :goto_6

    :cond_7
    const-string/jumbo v6, "Period"

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-nez v20, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;

    move-result-object v9

    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    iget-wide v0, v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    move-wide/from16 v30, v0

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v27, v30, v32

    if-nez v27, :cond_9

    if-eqz v13, :cond_8

    const/4 v6, 0x1

    move v9, v6

    move-object/from16 v20, v23

    move v6, v10

    move-object/from16 v10, v26

    goto/16 :goto_6

    :cond_8
    new-instance v6, Lorg/telegram/messenger/exoplayer2/ParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to determine start of period "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_9
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v24, v30

    if-nez v9, :cond_b

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    :goto_8
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    move v6, v10

    move/from16 v9, v20

    move-object/from16 v20, v23

    move-object/from16 v10, v26

    goto/16 :goto_6

    :cond_b
    iget-wide v0, v6, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;->startMs:J

    move-wide/from16 v30, v0

    add-long v24, v24, v30

    goto :goto_8

    :cond_c
    if-nez v13, :cond_e

    new-instance v6, Lorg/telegram/messenger/exoplayer2/ParserException;

    const-string/jumbo v7, "Unable to determine duration of static manifest."

    invoke-direct {v6, v7}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_d
    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v22}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->buildMediaPresentationDescription(JJJZJJJLorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;Landroid/net/Uri;Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v6

    return-object v6

    :cond_e
    move-wide/from16 v9, v28

    goto/16 :goto_7

    :cond_f
    move-object/from16 v23, v20

    move-object/from16 v26, v10

    move v10, v6

    move/from16 v20, v9

    goto/16 :goto_5
.end method

.method protected parsePeriod(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v0, "id"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "start"

    invoke-static {p1, v0, p3, p4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    const-string/jumbo v0, "duration"

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p1, v0, v8, v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseDuration(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move-object v1, v3

    move-object v2, p2

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v10, "BaseURL"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez v0, :cond_1

    invoke-static {p1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v10, "Period"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0, v4, v6, v7, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->buildPeriod(Ljava/lang/String;JLjava/util/List;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/Period;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v10, "AdaptationSet"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0, p1, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseAdaptationSet(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/AdaptationSet;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v10, "SegmentBase"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p0, p1, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string/jumbo v10, "SegmentList"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p0, p1, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string/jumbo v10, "SegmentTemplate"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0, p1, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v1

    goto :goto_0
.end method

.method protected parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 8

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    array-length v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    :cond_0
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->buildRangedUri(Ljava/lang/String;JJ)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseRepresentation(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIFIILjava/lang/String;ILorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;
    .locals 17

    const/4 v2, 0x0

    const-string/jumbo v3, "id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "bandwidth"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v2, "mimeType"

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "codecs"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "width"

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v2, "height"

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p1

    move/from16 v1, p7

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseFrameRate(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v7

    const-string/jumbo v2, "audioSamplingRate"

    move-object/from16 v0, p1

    move/from16 v1, p9

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    move/from16 v11, p8

    move-object/from16 v2, p12

    move-object/from16 v12, p2

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v14, "BaseURL"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    if-nez v8, :cond_5

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseBaseUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v8, 0x1

    move-object v14, v2

    move-object v15, v12

    move v2, v8

    move v8, v11

    :goto_1
    const-string/jumbo v11, "Representation"

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v2, p0

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->buildFormat(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;ILjava/lang/String;)Lorg/telegram/messenger/exoplayer2/Format;

    move-result-object v2

    if-eqz v14, :cond_6

    :goto_2
    new-instance v3, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;

    move-object/from16 v0, v16

    invoke-direct {v3, v2, v15, v14, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser$RepresentationInfo;-><init>(Lorg/telegram/messenger/exoplayer2/Format;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/ArrayList;)V

    return-object v3

    :cond_0
    const-string/jumbo v14, "AudioChannelConfiguration"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseAudioChannelConfiguration(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v11

    move-object v14, v2

    move-object v15, v12

    move v2, v8

    move v8, v11

    goto :goto_1

    :cond_1
    const-string/jumbo v14, "SegmentBase"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v2

    move-object v14, v2

    move-object v15, v12

    move v2, v8

    move v8, v11

    goto :goto_1

    :cond_2
    const-string/jumbo v14, "SegmentList"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v2

    move-object v14, v2

    move-object v15, v12

    move v2, v8

    move v8, v11

    goto :goto_1

    :cond_3
    const-string/jumbo v14, "SegmentTemplate"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    check-cast v2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v2

    move-object v14, v2

    move-object v15, v12

    move v2, v8

    move v8, v11

    goto :goto_1

    :cond_4
    const-string/jumbo v14, "ContentProtection"

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseContentProtection(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/drm/DrmInitData$SchemeData;

    move-result-object v14

    if-eqz v14, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v14, v2

    move-object v15, v12

    move v2, v8

    move v8, v11

    goto/16 :goto_1

    :cond_6
    new-instance v14, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    invoke-direct {v14, v15}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    move v11, v8

    move-object v12, v15

    move v8, v2

    move-object v2, v14

    goto/16 :goto_0
.end method

.method protected parseSegmentBase(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;
    .locals 12

    const-wide/16 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const-string/jumbo v2, "timescale"

    if-eqz p2, :cond_1

    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->timescale:J

    :goto_0
    invoke-static {p1, v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v4, "presentationTimeOffset"

    if-eqz p2, :cond_2

    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->presentationTimeOffset:J

    :goto_1
    invoke-static {p1, v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    if-eqz p2, :cond_3

    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexStart:J

    :goto_2
    if-eqz p2, :cond_0

    iget-wide v8, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->indexLength:J

    :cond_0
    const-string/jumbo v11, "indexRange"

    invoke-interface {p1, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    const-string/jumbo v0, "-"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v8, v0

    add-long/2addr v8, v6

    move-wide v6, v0

    :goto_3
    if-eqz p2, :cond_4

    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->initialization:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v1, "Initialization"

    invoke-static {p1, v1}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    :goto_5
    const-string/jumbo v0, "SegmentBase"

    invoke-static {p1, v0}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->buildSingleSegmentBase(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJJJ)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    move-result-object v0

    return-object v0

    :cond_1
    move-wide v0, v6

    goto :goto_0

    :cond_2
    move-wide v0, v8

    goto :goto_1

    :cond_3
    move-wide v0, v8

    goto :goto_2

    :cond_4
    move-object v0, v10

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v1, v0

    goto :goto_5

    :cond_7
    move-wide v6, v0

    goto :goto_3
.end method

.method protected parseSegmentList(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;
    .locals 12

    const/4 v9, 0x0

    const-string/jumbo v2, "timescale"

    if-eqz p2, :cond_2

    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->timescale:J

    :goto_0
    invoke-static {p1, v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v4, "presentationTimeOffset"

    if-eqz p2, :cond_3

    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->presentationTimeOffset:J

    :goto_1
    invoke-static {p1, v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v6, "duration"

    if-eqz p2, :cond_4

    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->duration:J

    :goto_2
    invoke-static {p1, v6, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string/jumbo v1, "startNumber"

    if-eqz p2, :cond_5

    iget v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->startNumber:I

    :goto_3
    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    move-object v0, v9

    move-object v1, v9

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v10, "Initialization"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v9

    :cond_1
    :goto_4
    const-string/jumbo v10, "SegmentList"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz p2, :cond_c

    if-eqz v9, :cond_9

    move-object v10, v9

    :goto_5
    if-eqz v1, :cond_a

    move-object v9, v1

    :goto_6
    if-eqz v0, :cond_b

    :goto_7
    move-object v1, v10

    move-object v10, v0

    :goto_8
    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentList(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Ljava/util/List;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const-string/jumbo v10, "SegmentTimeline"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :cond_7
    const-string/jumbo v10, "SegmentURL"

    invoke-static {p1, v10}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_8
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-object v10, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->initialization:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    goto :goto_5

    :cond_a
    iget-object v9, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->segmentTimeline:Ljava/util/List;

    goto :goto_6

    :cond_b
    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentList;->mediaSegments:Ljava/util/List;

    goto :goto_7

    :cond_c
    move-object v10, v0

    move-object v11, v1

    move-object v1, v9

    move-object v9, v11

    goto :goto_8
.end method

.method protected parseSegmentTemplate(Lorg/xmlpull/v1/XmlPullParser;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;
    .locals 12

    const/4 v9, 0x0

    const-string/jumbo v2, "timescale"

    if-eqz p2, :cond_2

    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->timescale:J

    :goto_0
    invoke-static {p1, v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v4, "presentationTimeOffset"

    if-eqz p2, :cond_3

    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->presentationTimeOffset:J

    :goto_1
    invoke-static {p1, v4, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    const-string/jumbo v6, "duration"

    if-eqz p2, :cond_4

    iget-wide v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->duration:J

    :goto_2
    invoke-static {p1, v6, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v7

    const-string/jumbo v1, "startNumber"

    if-eqz p2, :cond_5

    iget v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->startNumber:I

    :goto_3
    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v1, "media"

    if-eqz p2, :cond_6

    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->mediaTemplate:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

    :goto_4
    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v11

    const-string/jumbo v1, "initialization"

    if-eqz p2, :cond_7

    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initializationTemplate:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

    :goto_5
    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object v10

    move-object v0, v9

    move-object v1, v9

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v9, "Initialization"

    invoke-static {p1, v9}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInitialization(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v1

    :cond_1
    :goto_6
    const-string/jumbo v9, "SegmentTemplate"

    invoke-static {p1, v9}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz p2, :cond_b

    if-eqz v1, :cond_9

    :goto_7
    if-eqz v0, :cond_a

    :goto_8
    move-object v9, v0

    :goto_9
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentTemplate(Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;JJIJLjava/util/List;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v9

    goto :goto_4

    :cond_7
    move-object v0, v9

    goto :goto_5

    :cond_8
    const-string/jumbo v9, "SegmentTimeline"

    invoke-static {p1, v9}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    goto :goto_6

    :cond_9
    iget-object v1, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->initialization:Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    goto :goto_7

    :cond_a
    iget-object v0, p2, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTemplate;->segmentTimeline:Ljava/util/List;

    goto :goto_8

    :cond_b
    move-object v9, v0

    goto :goto_9
.end method

.method protected parseSegmentTimeline(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, 0x0

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string/jumbo v2, "S"

    invoke-static {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "t"

    invoke-static {p1, v2, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    const-string/jumbo v2, "d"

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p1, v2, v4, v5}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    const-string/jumbo v2, "r"

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_1

    invoke-virtual {p0, v0, v1, v8, v9}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->buildSegmentTimelineElement(JJ)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/SegmentBase$SegmentTimelineElement;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v4, v0, v8

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "SegmentTimeline"

    invoke-static {p1, v2}, Lorg/telegram/messenger/exoplayer2/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v6
.end method

.method protected parseSegmentUrl(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;
    .locals 2

    const-string/jumbo v0, "media"

    const-string/jumbo v1, "mediaRange"

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->parseRangedUrl(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    return-object v0
.end method

.method protected parseUrlTemplate(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;->compile(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UrlTemplate;

    move-result-object p3

    :cond_0
    return-object p3
.end method

.method protected parseUtcTiming(Lorg/xmlpull/v1/XmlPullParser;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "schemeIdUri"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/exoplayer2/source/dash/manifest/DashManifestParser;->buildUtcTimingElement(Ljava/lang/String;Ljava/lang/String;)Lorg/telegram/messenger/exoplayer2/source/dash/manifest/UtcTimingElement;

    move-result-object v0

    return-object v0
.end method
