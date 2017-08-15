.class public Lcom/coremedia/iso/boxes/MediaBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "MediaBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "mdia"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "mdia"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHandlerBox()Lcom/coremedia/iso/boxes/HandlerBox;
    .locals 3

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MediaBox;->getBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    instance-of v2, v0, Lcom/coremedia/iso/boxes/HandlerBox;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/coremedia/iso/boxes/HandlerBox;

    goto :goto_0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .locals 3

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MediaBox;->getBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    instance-of v2, v0, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    goto :goto_0
.end method

.method public getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;
    .locals 3

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MediaBox;->getBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    instance-of v2, v0, Lcom/coremedia/iso/boxes/MediaInformationBox;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/coremedia/iso/boxes/MediaInformationBox;

    goto :goto_0
.end method
