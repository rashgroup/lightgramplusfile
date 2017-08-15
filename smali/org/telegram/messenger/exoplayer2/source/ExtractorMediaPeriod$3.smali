.class Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;
.super Ljava/lang/Object;
.source "ExtractorMediaPeriod.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

.field final synthetic val$extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;->val$extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;->val$extractorHolder:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$ExtractorHolder;->release()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$300(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod$3;->this$0:Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;

    # getter for: Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->sampleQueues:Landroid/util/SparseArray;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;->access$300(Lorg/telegram/messenger/exoplayer2/source/ExtractorMediaPeriod;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/extractor/DefaultTrackOutput;->disable()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
