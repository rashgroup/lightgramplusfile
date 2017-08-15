.class public Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.super Ljava/lang/Object;
.source "SsManifestParser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;,
        Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;,
        Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;,
        Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;,
        Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;,
        Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/telegram/messenger/exoplayer2/upstream/ParsingLoadable$Parser",
        "<",
        "Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;",
        ">;"
    }
.end annotation


# instance fields
.field private final xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;
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


# virtual methods
.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;

    move-result-object v0

    return-object v0
.end method

.method public parse(Landroid/net/Uri;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;->xmlParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$SmoothStreamingMediaParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/telegram/messenger/exoplayer2/ParserException;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer2/ParserException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
