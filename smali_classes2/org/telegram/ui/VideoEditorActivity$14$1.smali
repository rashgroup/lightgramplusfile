.class Lorg/telegram/ui/VideoEditorActivity$14$1;
.super Ljava/lang/Object;
.source "VideoEditorActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VideoEditorActivity$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/VideoEditorActivity$14;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VideoEditorActivity$14;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$200(Lorg/telegram/ui/VideoEditorActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v2, v2, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    sub-float v0, v1, v0

    div-float v0, v3, v0

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v2, v0}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v1, v1, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v1, v1, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v2, v2, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$500(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v2

    mul-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    const v0, 0x3c23d70a    # 0.01f

    sub-float v0, v1, v0

    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v2, v2, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    sub-float v0, v1, v0

    div-float v0, v3, v0

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v2, v0}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v1, v1, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v1, v1, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v2, v2, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;
    invoke-static {v2}, Lorg/telegram/ui/VideoEditorActivity;->access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v3, v3, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v3}, Lorg/telegram/ui/VideoEditorActivity;->access$600(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    # setter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v1, v0}, Lorg/telegram/ui/VideoEditorActivity;->access$602(Lorg/telegram/ui/VideoEditorActivity;F)F

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v0, v0, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;
    invoke-static {v0}, Lorg/telegram/ui/VideoEditorActivity;->access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity$14$1;->this$1:Lorg/telegram/ui/VideoEditorActivity$14;

    iget-object v1, v1, Lorg/telegram/ui/VideoEditorActivity$14;->this$0:Lorg/telegram/ui/VideoEditorActivity;

    # getter for: Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F
    invoke-static {v1}, Lorg/telegram/ui/VideoEditorActivity;->access$600(Lorg/telegram/ui/VideoEditorActivity;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    goto/16 :goto_0
.end method
