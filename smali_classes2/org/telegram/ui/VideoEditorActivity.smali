.class public Lorg/telegram/ui/VideoEditorActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "VideoEditorActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;,
        Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;
    }
.end annotation


# instance fields
.field private allowMentions:Z

.field private audioFramesSize:J

.field private bitrate:I

.field private captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

.field private captionItem:Landroid/widget/ImageView;

.field private compressItem:Landroid/widget/ImageView;

.field private compressionsCount:I

.field private created:Z

.field private currentCaption:Ljava/lang/CharSequence;

.field private currentSubtitle:Ljava/lang/String;

.field private delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

.field private endTime:J

.field private esimatedDuration:J

.field private estimatedSize:I

.field private firstCaptionLayout:Z

.field private inPreview:Z

.field private lastProgress:F

.field private loadInitialVideo:Z

.field private mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private mentionListAnimation:Landroid/animation/AnimatorSet;

.field private mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field private muteItem:Landroid/widget/ImageView;

.field private muteVideo:Z

.field private needSeek:Z

.field private originalBitrate:I

.field private originalHeight:I

.field private originalSize:J

.field private originalWidth:I

.field private parentChatActivity:Lorg/telegram/ui/ChatActivity;

.field private pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private playButton:Landroid/widget/ImageView;

.field private playerPrepared:Z

.field private previewViewEnd:I

.field private previousCompression:I

.field private progressRunnable:Ljava/lang/Runnable;

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

.field private qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private requestingPreview:Z

.field private resultHeight:I

.field private resultWidth:I

.field private rotationValue:I

.field private selectedCompression:I

.field private startTime:J

.field private final sync:Ljava/lang/Object;

.field private textureView:Landroid/view/TextureView;

.field private thread:Ljava/lang/Thread;

.field private tryStartRequestPreviewOnFinish:Z

.field private videoDuration:F

.field private videoFramesSize:J

.field private videoPath:Ljava/lang/String;

.field private videoPlayer:Landroid/media/MediaPlayer;

.field private videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

.field private videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

.field private videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;

    new-instance v0, Lorg/telegram/ui/VideoEditorActivity$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VideoEditorActivity$1;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressRunnable:Ljava/lang/Runnable;

    const-string/jumbo v0, "videoPath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    return v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/VideoEditorActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/VideoEditorActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/VideoEditorActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VideoEditorActivity;->didChangedCompressionLevel(Z)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/VideoEditorActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VideoEditorActivity;->requestVideoPreview(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    return v0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/VideoEditorActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VideoEditorActivity;->closeCaptionEnter(Z)V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->firstCaptionLayout:Z

    return v0
.end method

.method static synthetic access$2302(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->firstCaptionLayout:Z

    return p1
.end method

.method static synthetic access$2400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/VideoEditorActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    return-wide v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/VideoEditorActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->previewViewEnd:I

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I

    return v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/VideoEditorActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/VideoEditorActivity;->previewViewEnd:I

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/VideoEditorActivity;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    return-wide v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentCaption:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateWidthHeightBitrateForCompression()V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    return v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoTimelineView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/VideoEditorActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VideoEditorActivity;->showQualityView(Z)V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z

    return v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->needSeek:Z

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    return v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Adapters/MentionsAdapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/ChatActivity;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/VideoEditorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->allowMentions:Z

    return v0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/VideoEditorActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/VideoEditorActivity;->allowMentions:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/VideoEditorActivity;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    return v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/VideoEditorActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/VideoEditorActivity;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5202(Lorg/telegram/ui/VideoEditorActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5300(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/VideoEditorActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->previousCompression:I

    return v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$600(Lorg/telegram/ui/VideoEditorActivity;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    return v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/VideoEditorActivity;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    return p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/VideoEditorActivity;)Lorg/telegram/ui/Components/VideoSeekBarView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/VideoEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->onPlayComplete()V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/VideoEditorActivity;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/VideoEditorActivity;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->thread:Ljava/lang/Thread;

    return-object p1
.end method

.method private closeCaptionEnter(Z)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentCaption:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoSeekBarView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "AttachGif"

    const v2, 0x7f0800b3

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentCaption:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f020213

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hidePopup()V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->closeKeyboard()V

    return-void

    :cond_3
    const-string/jumbo v0, "AttachVideo"

    const v2, 0x7f0800b8

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentSubtitle:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const v0, 0x7f020214

    goto :goto_2
.end method

.method private destroyPlayer()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private didChangedCompressionLevel(Z)V
    .locals 3

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "compress_video2"

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateWidthHeightBitrateForCompression()V

    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/VideoEditorActivity;->requestVideoPreview(I)V

    :cond_0
    return-void
.end method

.method private onPlayComplete()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v1, 0x7f020296

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoSeekBarView;->setProgress(F)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private processOpenVideo()Z
    .locals 18

    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/VideoEditorActivity;->originalSize:J

    new-instance v5, Lcom/coremedia/iso/IsoFile;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {v5, v2}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/moov/trak/"

    invoke-static {v5, v2}, Lcom/googlecode/mp4parser/util/Path;->getPaths(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-string/jumbo v6, "/moov/trak/mdia/minf/stbl/stsd/mp4a/"

    invoke-static {v5, v6}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-nez v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const-string/jumbo v3, "/moov/trak/mdia/minf/stbl/stsd/avc1/"

    invoke-static {v5, v3}, Lcom/googlecode/mp4parser/util/Path;->getPath(Lcom/coremedia/iso/boxes/Container;Ljava/lang/String;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v3

    if-nez v3, :cond_c

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/4 v2, 0x0

    move v10, v2

    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_5

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/Box;

    check-cast v2, Lcom/coremedia/iso/boxes/TrackBox;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    :try_start_1
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackBox;->getMediaBox()Lcom/coremedia/iso/boxes/MediaBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/MediaHeaderBox;

    move-result-object v12

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/MediaBox;->getMediaInformationBox()Lcom/coremedia/iso/boxes/MediaInformationBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/MediaInformationBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizes()[J

    move-result-object v13

    const/4 v5, 0x0

    :goto_3
    array-length v14, v13

    if-ge v5, v14, :cond_2

    aget-wide v14, v13, v5

    add-long/2addr v6, v14

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getDuration()J

    move-result-wide v14

    long-to-float v5, v14

    invoke-virtual {v12}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->getTimescale()J

    move-result-wide v12

    long-to-float v12, v12

    div-float/2addr v5, v12

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    const-wide/16 v12, 0x8

    mul-long/2addr v12, v6

    long-to-float v5, v12

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    div-float/2addr v5, v8

    float-to-int v5, v5

    int-to-long v8, v5

    move-wide/from16 v16, v8

    move-wide v8, v6

    move-wide/from16 v6, v16

    :goto_4
    :try_start_2
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v5, v12, v14

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v5, v12, v14

    if-eqz v5, :cond_4

    const-wide/32 v4, 0x186a0

    div-long v4, v6, v4

    const-wide/32 v6, 0x186a0

    mul-long/2addr v4, v6

    long-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    const v5, 0xdbba0

    if-le v4, v5, :cond_3

    const v4, 0xdbba0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    :goto_5
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-object v4, v2

    goto/16 :goto_2

    :catch_0
    move-exception v5

    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-wide/from16 v16, v8

    move-wide v8, v6

    move-wide/from16 v6, v16

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    move-object v2, v4

    goto :goto_5

    :cond_5
    if-nez v4, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v2

    sget-object v5, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_90:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v2, 0x5a

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    :cond_7
    :goto_6
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v6

    double-to-int v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v4

    double-to-int v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "mainconfig"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v4, "compress_video2"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VideoEditorActivity;->updateWidthHeightBitrateForCompression()V

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-ne v2, v3, :cond_b

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    sget-object v5, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v2, 0xb4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    :try_start_3
    sget-object v5, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x10e

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :cond_b
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_c
    move v3, v2

    goto/16 :goto_1
.end method

.method private reinitPlayer(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->destroyPlayer()V

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v4, 0x7f020296

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iput v0, p0, Lorg/telegram/ui/VideoEditorActivity;->lastProgress:F

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$2;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$2;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :try_start_0
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v3, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v3, :cond_3

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->inPreview:Z

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v1, v2

    goto :goto_2

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private requestVideoPreview(I)V
    .locals 11

    const-wide/16 v8, -0x1

    const/4 v5, 0x4

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    iput-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    if-ne p1, v1, :cond_a

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iget v4, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_4

    iput-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    iput-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->destroyPlayer()V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_5

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    const-string/jumbo v3, ""

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    new-instance v3, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v3, v0, v10, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iput-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "video_preview.mp4"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    iput-object v3, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    iput-object v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v6, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    iput-wide v6, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    iput-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_6

    const-wide/16 v6, 0x0

    :cond_6
    cmp-long v0, v4, v8

    if-nez v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    float-to-long v4, v0

    :cond_7
    sub-long/2addr v4, v6

    const-wide/32 v8, 0x4c4b40

    cmp-long v0, v4, v8

    if-lez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const-wide/32 v4, 0x4c4b40

    add-long/2addr v4, v6

    iput-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    if-nez v0, :cond_9

    iput-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_a
    iput-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    goto/16 :goto_1
.end method

.method private showQualityView(Z)V
    .locals 11

    const/high16 v10, 0x43180000    # 152.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iput v0, p0, Lorg/telegram/ui/VideoEditorActivity;->previousCompression:I

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$22;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VideoEditorActivity$22;-><init>(Lorg/telegram/ui/VideoEditorActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v6

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private updateVideoInfo()V
    .locals 10

    const-wide/16 v6, 0x3e8

    const/16 v3, 0x10e

    const/16 v2, 0x5a

    const/4 v9, 0x2

    const/4 v8, 0x1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v1, 0x7f020291

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_b

    :cond_2
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v0, v3, :cond_9

    :cond_3
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    :goto_2
    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v1, v3, :cond_a

    :cond_4
    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    :goto_3
    iget-wide v2, p0, Lorg/telegram/ui/VideoEditorActivity;->originalSize:J

    long-to-float v2, v2

    iget-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    long-to-float v3, v4

    iget v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_11

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    :goto_6
    const-string/jumbo v2, "%dx%d"

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    div-long/2addr v2, v6

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    long-to-int v1, v2

    iget-wide v2, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    div-long/2addr v2, v6

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v3, v1, 0x3c

    sub-int/2addr v2, v3

    const-string/jumbo v3, "%d:%02d, ~%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v8

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    int-to-long v6, v1

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "%s, %s"

    new-array v3, v9, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentSubtitle:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v1, 0x7f020292

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    if-ne v0, v9, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v1, 0x7f020293

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v1, 0x7f020294

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v1, 0x7f020290

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    goto/16 :goto_2

    :cond_a
    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    goto/16 :goto_3

    :cond_b
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v0, v2, :cond_c

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v0, v3, :cond_e

    :cond_c
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    :goto_8
    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-eq v1, v2, :cond_d

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->rotationValue:I

    if-ne v1, v3, :cond_f

    :cond_d
    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    :goto_9
    iget-wide v2, p0, Lorg/telegram/ui/VideoEditorActivity;->audioFramesSize:J

    iget-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    add-long/2addr v2, v4

    long-to-float v2, v2

    iget-wide v4, p0, Lorg/telegram/ui/VideoEditorActivity;->esimatedDuration:J

    long-to-float v3, v4

    iget v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    const v4, 0x8000

    div-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->estimatedSize:I

    goto/16 :goto_4

    :cond_e
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    goto :goto_8

    :cond_f
    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    goto :goto_9

    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lorg/telegram/ui/VideoEditorActivity;->startTime:J

    goto/16 :goto_5

    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lorg/telegram/ui/VideoEditorActivity;->endTime:J

    goto/16 :goto_6

    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->currentSubtitle:Ljava/lang/String;

    goto/16 :goto_7
.end method

.method private updateWidthHeightBitrateForCompression()V
    .locals 7

    const/16 v6, 0x500

    const/16 v5, 0x350

    const/16 v3, 0x280

    const/16 v2, 0x1e0

    const/high16 v4, 0x40000000    # 2.0f

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-gt v0, v6, :cond_0

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v0, v6, :cond_4

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    :cond_2
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->selectedCompression:I

    packed-switch v0, :pswitch_data_0

    const v0, 0x186a00

    const/high16 v1, 0x44a00000    # 1280.0f

    :goto_1
    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    iget v3, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v2, v3, :cond_b

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_2
    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->resultWidth:I

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/telegram/ui/VideoEditorActivity;->resultHeight:I

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->originalBitrate:I

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->bitrate:I

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoFramesSize:J

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-gt v0, v5, :cond_5

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v0, v5, :cond_6

    :cond_5
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-gt v0, v3, :cond_7

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v0, v3, :cond_8

    :cond_7
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    goto :goto_0

    :cond_8
    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalWidth:I

    if-gt v0, v2, :cond_9

    iget v0, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    if-le v0, v2, :cond_a

    :cond_9
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    goto/16 :goto_0

    :pswitch_0
    const/high16 v1, 0x43d80000    # 432.0f

    const v0, 0x61a80

    goto :goto_1

    :pswitch_1
    const/high16 v1, 0x44200000    # 640.0f

    const v0, 0xdbba0

    goto :goto_1

    :pswitch_2
    const/high16 v1, 0x44540000    # 848.0f

    const v0, 0x10c8e0

    goto :goto_1

    :cond_b
    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->originalHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 14

    const/4 v13, 0x1

    const/16 v2, 0x53

    const/4 v12, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, -0xc2c2c3

    invoke-virtual {v1, v4, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v4, 0x7f0200e8

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v4, "AttachVideo"

    const v5, 0x7f0800b8

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$3;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$3;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$4;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VideoEditorActivity$4;-><init>(Lorg/telegram/ui/VideoEditorActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    move-object v11, v1

    check-cast v11, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    invoke-virtual {v11, v13}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->setWithoutWindow(Z)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$5;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$5;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v1, v12, v12}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v4, 0x30

    invoke-static {v0, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$6;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$6;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$7;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$7;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v5, -0x2

    const/16 v6, 0x30

    const/16 v7, 0x31

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->currentCaption:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f020213

    :goto_0
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    const v5, 0x40ffffff    # 7.9999995f

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    const/16 v5, 0x38

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionItem:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/VideoEditorActivity$8;

    invoke-direct {v5, p0}, Lorg/telegram/ui/VideoEditorActivity$8;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const v5, 0x40ffffff    # 7.9999995f

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    if-le v1, v13, :cond_4

    move v1, v12

    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v5, 0x38

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/VideoEditorActivity$9;

    invoke-direct {v5, p0}, Lorg/telegram/ui/VideoEditorActivity$9;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-ge v1, v5, :cond_0

    :try_start_0
    const-string/jumbo v1, "video/avc"

    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    const v5, 0x40ffffff    # 7.9999995f

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    const/16 v5, 0x38

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$10;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$10;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/VideoTimelineView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/VideoTimelineView;->setVideoPath(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$11;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$11;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/VideoTimelineView;->setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const/high16 v1, 0x42300000    # 44.0f

    const/high16 v6, 0x42860000    # 67.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v11, v7, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/VideoSeekBarView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/VideoSeekBarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$12;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$12;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/VideoSeekBarView;->setDelegate(Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v7, 0x41300000    # 11.0f

    const/high16 v9, 0x41300000    # 11.0f

    const/high16 v10, 0x42e00000    # 112.0f

    move v4, v0

    move v6, v2

    move v8, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/view/TextureView;

    invoke-direct {v1, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$13;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$13;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x33

    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v10, 0x430c0000    # 140.0f

    move v4, v0

    move v7, v3

    move v9, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v4, 0x7f0200a1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setBackgroundResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v4, 0x36

    const/high16 v5, 0x42580000    # 54.0f

    const/16 v6, 0x11

    const/high16 v10, 0x428c0000    # 70.0f

    move v7, v3

    move v8, v3

    move v9, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v4, 0x7f020296

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$14;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$14;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const/16 v4, 0x64

    const/high16 v5, 0x42c80000    # 100.0f

    const/16 v6, 0x11

    const/high16 v10, 0x428c0000    # 70.0f

    move v7, v3

    move v8, v3

    move v9, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v11, v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setForceFloatingEmoji(Z)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$15;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$15;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setDelegate(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v4, -0x2

    invoke-static {v0, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onCreate()V

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$16;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VideoEditorActivity$16;-><init>(Lorg/telegram/ui/VideoEditorActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v1, v13}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v4, 0x7f000000

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v4, 0x6e

    invoke-static {v0, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Adapters/MentionsAdapter;

    const-wide/16 v8, 0x0

    new-instance v10, Lorg/telegram/ui/VideoEditorActivity$17;

    invoke-direct {v10, p0}, Lorg/telegram/ui/VideoEditorActivity$17;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    move-object v6, p1

    move v7, v13

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;-><init>(Landroid/content/Context;ZJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;)V

    iput-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowNewMentions(Z)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$18;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$18;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$19;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    iget v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressionsCount:I

    if-le v1, v13, :cond_2

    new-instance v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v1, v12, v12}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string/jumbo v4, "Done"

    const v5, 0x7f0801dc

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v4, 0x30

    invoke-static {v0, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$20;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$20;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/VideoEditorActivity$21;

    invoke-direct {v4, p0}, Lorg/telegram/ui/VideoEditorActivity$21;-><init>(Lorg/telegram/ui/VideoEditorActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;-><init>(Lorg/telegram/ui/VideoEditorActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;->setVisibility(I)V

    iget-object v7, p0, Lorg/telegram/ui/VideoEditorActivity;->qualityChooseView:Lorg/telegram/ui/VideoEditorActivity$QualityChooseView;

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v6, 0x42300000    # 44.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v11, v7, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateVideoInfo()V

    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->updateMuteButton()V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->fragmentView:Landroid/view/View;

    return-object v0

    :cond_3
    const v1, 0x7f020214

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_1

    :cond_5
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "OMX.google.h264.encoder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "OMX.ST.VFM.H264Enc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "OMX.Exynos.avc.enc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "OMX.MARVELL.VIDEO.HW.CODA7542ENCODER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "OMX.MARVELL.VIDEO.H264ENCODER"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "OMX.k3.video.encoder.avc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "OMX.TI.DUCATI1.VIDEO.H264E"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    iget-object v5, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_7
    :try_start_2
    const-string/jumbo v5, "video/avc"

    invoke-static {v1, v5}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->removeSelfFromStack()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    if-ne p1, v0, :cond_5

    aget-object v0, p2, v2

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-boolean v3, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    if-eqz v3, :cond_2

    iput-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->loadInitialVideo:Z

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->destroyPlayer()V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->tryStartRequestPreviewOnFinish:Z

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playButton:Landroid/widget/ImageView;

    const v1, 0x7f020296

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    if-ne p1, v0, :cond_0

    aget-object v0, p2, v2

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, v3, :cond_0

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->requestingPreview:Z

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lorg/telegram/ui/VideoEditorActivity;->created:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/VideoEditorActivity;->processOpenVideo()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPath:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/telegram/ui/VideoEditorActivity;->reinitPlayer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    iput-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->created:Z

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    goto :goto_0
.end method

.method public onFragmentDestroy()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/ui/VideoEditorActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->destroy()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/VideoEditorActivity;->requestVideoPreview(I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/VideoEditorActivity;->closeCaptionEnter(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->playerPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lorg/telegram/ui/VideoEditorActivity;->videoSeekBarView:Lorg/telegram/ui/Components/VideoSeekBarView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoSeekBarView;->getProgress()F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->delegate:Lorg/telegram/ui/VideoEditorActivity$VideoEditorActivityDelegate;

    return-void
.end method

.method public setParentChatActivity(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VideoEditorActivity;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    return-void
.end method

.method public updateMuteButton()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteVideo:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AttachGif"

    const v2, 0x7f0800b3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    const v1, 0x7f02029a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const v1, 0x46ea6000    # 30000.0f

    iget v2, p0, Lorg/telegram/ui/VideoEditorActivity;->videoDuration:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setMaxProgressDiff(F)V

    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "AttachVideo"

    const v3, 0x7f0800b8

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v2, p0, Lorg/telegram/ui/VideoEditorActivity;->currentSubtitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->muteItem:Landroid/widget/ImageView;

    const v2, 0x7f02029b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/VideoEditorActivity;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setMaxProgressDiff(F)V

    goto :goto_1
.end method
