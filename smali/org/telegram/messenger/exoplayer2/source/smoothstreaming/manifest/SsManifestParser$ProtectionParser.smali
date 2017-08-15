.class Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;
.super Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProtectionParser"
.end annotation


# static fields
.field public static final KEY_SYSTEM_ID:Ljava/lang/String; = "SystemID"

.field public static final TAG:Ljava/lang/String; = "Protection"

.field public static final TAG_PROTECTION_HEADER:Ljava/lang/String; = "ProtectionHeader"


# instance fields
.field private inProtectionHeader:Z

.field private initData:[B

.field private uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "Protection"

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;-><init>(Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static stripCurlyBraces(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->uuid:Ljava/util/UUID;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->uuid:Ljava/util/UUID;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->initData:[B

    invoke-static {v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/PsshAtomUtil;->buildPsshAtom(Ljava/util/UUID;[B)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;-><init>(Ljava/util/UUID;[B)V

    return-object v0
.end method

.method public handleChildInline(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "ProtectionHeader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    const-string/jumbo v0, "ProtectionHeader"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->inProtectionHeader:Z

    :cond_0
    return-void
.end method

.method public parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    const-string/jumbo v0, "ProtectionHeader"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->inProtectionHeader:Z

    const/4 v0, 0x0

    const-string/jumbo v1, "SystemID"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->stripCurlyBraces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->uuid:Ljava/util/UUID;

    :cond_0
    return-void
.end method

.method public parseText(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->inProtectionHeader:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;->initData:[B

    :cond_0
    return-void
.end method
