.class Lorg/telegram/ui/VideoEditorActivity$1$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VideoEditorActivity$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->previewViewEnd:I
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$300(Lorg/telegram/ui/VideoEditorActivity;)I

    move-result v0

    int-to-float v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    move v4, v0

    move v0, v2

    move v2, v1

    move v1, v4

    :goto_0
    cmpl-float v3, v0, v2

    if-nez v3, :cond_0

    const v0, 0x3c23d70a    # 0.01f

    sub-float v0, v2, v0

    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    sub-float v0, v2, v0

    div-float v0, v3, v0

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$600(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v1, v0}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # invokes: Lorg/telegram/ui/VideoEditorActivity;->onPlayComplete()V
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$800(Lorg/telegram/ui/VideoEditorActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v1

    mul-float v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v1, v1, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$1$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$1;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$1;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v3

    sub-float/2addr v0, v3

    move v4, v0

    move v0, v2

    move v2, v1

    move v1, v4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
