.class public Lorg/telegram/ui/VoIPActivity;
.super Landroid/app/Activity;
.source "VoIPActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/voip/VoIPService$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "tg-voip-ui"


# instance fields
.field private acceptBtn:Landroid/view/View;

.field private acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

.field private audioBitrate:I

.field private blurOverlayView1:Landroid/widget/ImageView;

.field private blurOverlayView2:Landroid/widget/ImageView;

.field private blurredPhoto1:Landroid/graphics/Bitmap;

.field private blurredPhoto2:Landroid/graphics/Bitmap;

.field private callState:I

.field private cancelBtn:Landroid/view/View;

.field private chatBtn:Landroid/widget/ImageView;

.field private content:Landroid/widget/FrameLayout;

.field private currentAcceptAnim:Landroid/animation/Animator;

.field private currentDeclineAnim:Landroid/animation/Animator;

.field private declineBtn:Landroid/view/View;

.field private declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

.field private didAcceptFromHere:Z

.field private durationText:Landroid/widget/TextView;

.field private ellAnimator:Landroid/animation/AnimatorSet;

.field private ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

.field private emojiAnimator:Landroid/animation/AnimatorSet;

.field emojiExpanded:Z

.field private emojiExpandedText:Landroid/widget/TextView;

.field emojiTooltipVisible:Z

.field private emojiWrap:Landroid/widget/LinearLayout;

.field private endBtn:Landroid/view/View;

.field private endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

.field private endBtnIcon:Landroid/view/View;

.field private firstStateChange:Z

.field private hintTextView:Landroid/widget/TextView;

.field private isIncomingWaiting:Z

.field private keyEmojiViews:[Landroid/widget/ImageView;

.field private keyEmojiVisible:Z

.field private lastStateText:Ljava/lang/String;

.field private micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

.field private nameText:Landroid/widget/TextView;

.field private packetLossPercent:I

.field private photoView:Lorg/telegram/ui/Components/BackupImageView;

.field private retryAnim:Landroid/animation/AnimatorSet;

.field private retrying:Z

.field private spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

.field private stateText:Landroid/widget/TextView;

.field private stateText2:Landroid/widget/TextView;

.field private swipeViewsWrap:Landroid/widget/LinearLayout;

.field private textChangingAnim:Landroid/animation/Animator;

.field private tooltipAnim:Landroid/animation/Animator;

.field private tooltipHider:Ljava/lang/Runnable;

.field private user:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->firstStateChange:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->keyEmojiViews:[Landroid/widget/ImageView;

    const/16 v0, 0x19

    iput v0, p0, Lorg/telegram/ui/VoIPActivity;->audioBitrate:I

    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/VoIPActivity;->packetLossPercent:I

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity;->updateBlurredPhotos(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->showDebugAlert()V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/VoIPActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/VoIPActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->callAccepted()V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->currentDeclineAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->currentDeclineAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->currentAcceptAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->currentAcceptAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/VoIPActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity;->setEmojiTooltipVisible(Z)V

    return-void
.end method

.method static synthetic access$1700(Lorg/telegram/ui/VoIPActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->tooltipHider:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/VoIPActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->tooltipHider:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/VoIPActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity;->setEmojiExpanded(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/VoIPActivity;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/VoIPActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VoIPActivity;->audioBitrate:I

    return v0
.end method

.method static synthetic access$2202(Lorg/telegram/ui/VoIPActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/VoIPActivity;->audioBitrate:I

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/ui/VoIPActivity;IIILjava/lang/String;Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/VoIPActivity;->showNumberPickerDialog(IIILjava/lang/String;Landroid/widget/NumberPicker$OnValueChangeListener;)V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/VoIPActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VoIPActivity;->packetLossPercent:I

    return v0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/VoIPActivity;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/VoIPActivity;->packetLossPercent:I

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/VoIPActivity;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/VoIPActivity;->callState:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->durationText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/VoIPActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->durationText:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/telegram/ui/VoIPActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$300(Lorg/telegram/ui/VoIPActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->retrying:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/VoIPActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/VoIPActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->firstStateChange:Z

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/VoIPActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->firstStateChange:Z

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/VoIPActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z

    return v0
.end method

.method static synthetic access$3202(Lorg/telegram/ui/VoIPActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z

    return p1
.end method

.method static synthetic access$3300(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/VoIPActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/VoIPActivity;->setStateTextAnimated(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->showRetry()V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->startUpdatingCallDuration()V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->updateKeyView()V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/VoIPActivity;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/VoIPActivity;->showErrorDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->textChangingAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/VoIPActivity;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$4302(Lorg/telegram/ui/VoIPActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/VoIPActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurredPhoto1:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4402(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->blurredPhoto1:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4500(Lorg/telegram/ui/VoIPActivity;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurredPhoto2:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4502(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->blurredPhoto2:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4600(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/VoIPActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/VoIPActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->hideRetry()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CheckableImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/VoIPActivity;)Lorg/telegram/ui/Components/voip/CallSwipeView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    return-object v0
.end method

.method private callAccepted()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->didAcceptFromHere:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v1, "color"

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const-string/jumbo v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    const-string/jumbo v5, "rotation"

    new-array v6, v7, [F

    fill-array-data v6, :array_4

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v11

    const/4 v4, 0x4

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v7, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_5

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x7d

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v2, v3, v8

    aput-object v0, v3, v9

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v0, Lorg/telegram/ui/VoIPActivity$18;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPActivity$18;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v1, "color"

    new-array v2, v7, [I

    fill-array-data v2, :array_6

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v11, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    fill-array-data v5, :array_9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v11, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_a

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v9

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_IN:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x7d

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v3, v7, [Landroid/animation/Animator;

    aput-object v1, v3, v8

    aput-object v2, v3, v9

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lorg/telegram/ui/VoIPActivity$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$19;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    :array_0
    .array-data 4
        -0xba43b3
        -0x19e1bc
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        -0x3cf90000    # -135.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        -0xba43b3
        -0x19e1bc
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObjectAnimatorBinding"
        }
    .end annotation

    const-string/jumbo v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method private createContentView()Landroid/view/View;
    .locals 12

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Lorg/telegram/ui/VoIPActivity$10;

    invoke-direct {v0, p0, p0}, Lorg/telegram/ui/VoIPActivity$10;-><init>(Lorg/telegram/ui/VoIPActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->photoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, -0x33000001    # -1.3421772E8f

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v0, "VoipInCallBranding"

    const v1, 0x7f08057b

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v0, 0xcc

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    sget-boolean v3, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v3, :cond_1

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v8, v0, v2, v1, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    :goto_2
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 v0, 0x1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v8, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v8, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    :goto_3
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const v2, 0x3f2aaaab

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const-string/jumbo v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iput-object v8, p0, Lorg/telegram/ui/VoIPActivity;->nameText:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x422c0000    # 43.0f

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, -0x33000001    # -1.3421772E8f

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string/jumbo v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const v2, 0x3f2aaaab

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v8, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    :goto_4
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    iput-object v8, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x42c40000    # 98.0f

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v8, p0, Lorg/telegram/ui/VoIPActivity;->durationText:Landroid/widget/TextView;

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v0, -0x33000001    # -1.3421772E8f

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const-string/jumbo v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const v2, 0x3f2aaaab

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    const/4 v0, 0x1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v8, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    :goto_5
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v8, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x33

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x42c40000    # 98.0f

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    new-instance v8, Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/voip/CheckableImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f02006c

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v8, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const/16 v0, 0x26

    const/high16 v1, 0x42180000    # 38.0f

    const/16 v2, 0x53

    const/high16 v3, 0x41800000    # 16.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Components/voip/CheckableImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x7f02006c

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v8, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const/16 v0, 0x26

    const/high16 v1, 0x42180000    # 38.0f

    const/16 v2, 0x55

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v8, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const/16 v0, 0x26

    const/high16 v1, 0x42180000    # 38.0f

    const/16 v2, 0x51

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Lorg/telegram/ui/Components/voip/CallSwipeView;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;-><init>(Landroid/content/Context;)V

    const v0, -0xba43b3

    invoke-virtual {v9, v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setColor(I)V

    iput-object v9, p0, Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    const/4 v0, -0x1

    const/16 v1, 0x46

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/16 v5, -0x23

    const/4 v6, 0x4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Lorg/telegram/ui/Components/voip/CallSwipeView;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Components/voip/CallSwipeView;-><init>(Landroid/content/Context;)V

    const v0, -0x19e1bc

    invoke-virtual {v10, v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setColor(I)V

    iput-object v10, p0, Lorg/telegram/ui/VoIPActivity;->declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    const/4 v0, -0x1

    const/16 v1, 0x46

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, -0x23

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v8, p0, Lorg/telegram/ui/VoIPActivity;->swipeViewsWrap:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x50

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x42880000    # 68.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    const v1, -0xba43b3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f02010d

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    const/high16 v1, -0x3cf90000    # -135.0f

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x420c0000    # 35.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    iput-object v8, p0, Lorg/telegram/ui/VoIPActivity;->acceptBtn:Landroid/view/View;

    const/16 v0, 0x4e

    const/high16 v1, 0x429c0000    # 78.0f

    const/16 v2, 0x53

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42880000    # 68.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/ImageView;

    invoke-direct {v11, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    const v1, -0x19e1bc

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f02010d

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v11, p0, Lorg/telegram/ui/VoIPActivity;->declineBtn:Landroid/view/View;

    const/16 v0, 0x4e

    const/high16 v1, 0x429c0000    # 78.0f

    const/16 v2, 0x55

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x42880000    # 68.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v11, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v9, v8, v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setViewToDrag(Landroid/view/View;Z)V

    const/4 v0, 0x1

    invoke-virtual {v10, v11, v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setViewToDrag(Landroid/view/View;Z)V

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    const v1, -0x19e1bc

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    const/16 v1, 0x46

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iput-object v8, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    const/16 v0, 0x4e

    const/high16 v1, 0x429c0000    # 78.0f

    const/16 v2, 0x51

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42880000    # 68.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;->setColor(I)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0200cd

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v0, -0x77000000

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-object v8, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    const/16 v0, 0x4e

    const/high16 v1, 0x429c0000    # 78.0f

    const/16 v2, 0x53

    const/high16 v3, 0x42500000    # 52.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42880000    # 68.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v0, 0x0

    move v6, v0

    :goto_6
    const/4 v0, 0x4

    if-ge v6, v0, :cond_7

    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v9, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/16 v0, 0x16

    const/16 v1, 0x16

    if-nez v6, :cond_6

    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->keyEmojiViews:[Landroid/widget/ImageView;

    aput-object v8, v0, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_6

    :cond_0
    move-object v0, v1

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x3

    goto/16 :goto_2

    :cond_3
    const/4 v0, 0x3

    goto/16 :goto_3

    :cond_4
    const/4 v0, 0x3

    goto/16 :goto_4

    :cond_5
    const/4 v0, 0x3

    goto/16 :goto_5

    :cond_6
    const/high16 v2, 0x40800000    # 4.0f

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$11;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x35

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$12;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x11

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/CorrectlyMeasuringTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const v2, -0xdcccccd

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "chat_gifSaveHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x43960000    # 300.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/high16 v4, 0x42280000    # 42.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v3

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    const/4 v0, 0x6

    new-array v9, v0, [Landroid/animation/Animator;

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/4 v2, 0x0

    const/16 v4, 0x96

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v6, 0x2

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v2, 0x0

    const/16 v4, 0x12c

    const/16 v5, 0x12c

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v0, 0x3

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/16 v6, 0x190

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/16 v6, 0x190

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    const/16 v6, 0x190

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/VoIPActivity;->createAlphaAnimator(Ljava/lang/Object;IIII)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$13;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    iput-object v7, p0, Lorg/telegram/ui/VoIPActivity;->content:Landroid/widget/FrameLayout;

    return-object v7
.end method

.method private hideRetry()V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iput-boolean v6, p0, Lorg/telegram/ui/VoIPActivity;->retrying:Z

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v1, "color"

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x7

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    const-string/jumbo v3, "rotation"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v7

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    const-string/jumbo v3, "translationX"

    new-array v4, v7, [F

    aput v9, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v5

    const/4 v0, 0x3

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lorg/telegram/ui/VoIPActivity$21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPActivity$21;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v1, "color"

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        -0xba43b3
        -0x19e1bc
    .end array-data

    :array_1
    .array-data 4
        -0x3cf90000    # -135.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        -0xba43b3
        -0x19e1bc
    .end array-data
.end method

.method private setEmojiExpanded(Z)V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpanded:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpanded:Z

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    if-eqz p1, :cond_2

    new-array v0, v9, [I

    fill-array-data v0, :array_0

    new-array v1, v9, [I

    fill-array-data v1, :array_1

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    aget v1, v1, v7

    aget v3, v0, v7

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40200000    # 2.5f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    aget v0, v0, v8

    sub-int v0, v2, v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x7

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v5, "translationY"

    new-array v6, v7, [F

    int-to-float v1, v1

    aput v1, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v8

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v4, "translationX"

    new-array v5, v7, [F

    int-to-float v0, v0

    aput v0, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v7

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "scaleX"

    new-array v4, v7, [F

    const/high16 v5, 0x40200000    # 2.5f

    aput v5, v4, v8

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v9

    const/4 v0, 0x3

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    const/high16 v6, 0x40200000    # 2.5f

    aput v6, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x3

    new-array v5, v5, [F

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getAlpha()F

    move-result v6

    aput v6, v5, v8

    aput v11, v5, v7

    aput v11, v5, v9

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x5

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x3

    new-array v5, v5, [F

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getAlpha()F

    move-result v6

    aput v6, v5, v8

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getAlpha()F

    move-result v6

    aput v6, v5, v7

    aput v11, v5, v9

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v11, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v2, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/VoIPActivity$26;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPActivity$26;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "translationX"

    new-array v4, v7, [F

    aput v10, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    aput v10, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v11, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->emojiWrap:Landroid/widget/LinearLayout;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v11, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x3

    new-array v5, v5, [F

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getAlpha()F

    move-result v6

    aput v6, v5, v8

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView1:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getAlpha()F

    move-result v6

    aput v6, v5, v7

    aput v10, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x3

    new-array v5, v5, [F

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->blurOverlayView2:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getAlpha()F

    move-result v6

    aput v6, v5, v8

    aput v10, v5, v7

    aput v10, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$27;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$27;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setEmojiTooltipVisible(Z)V
    .locals 5

    const/4 v4, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/VoIPActivity;->emojiTooltipVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "alpha"

    const/4 v0, 0x1

    new-array v3, v0, [F

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lorg/telegram/ui/VoIPActivity$25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$25;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->tooltipAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStateTextAnimated(Ljava/lang/String;Z)V
    .locals 11

    const/4 v10, 0x3

    const/4 v1, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x2

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->lastStateText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/VoIPActivity;->lastStateText:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->textChangingAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->textChangingAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    if-eqz p2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    array-length v5, v4

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    invoke-virtual {v6, v3}, Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;->setAlpha(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/text/SpannableString;

    const-string/jumbo v4, "..."

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4, v3, v9, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    aget-object v4, v4, v9

    invoke-virtual {v2, v4, v9, v8, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->ellSpans:[Lorg/telegram/ui/VoIPActivity$TextAlphaSpan;

    aget-object v4, v4, v8

    invoke-virtual {v2, v4, v8, v10, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPivotY(F)V

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->durationText:Landroid/widget/TextView;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v2, 0x8

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const-string/jumbo v5, "translationY"

    new-array v6, v8, [F

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    aput v7, v6, v3

    aput v1, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v9

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const-string/jumbo v5, "scaleX"

    new-array v6, v8, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v8

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->stateText2:Landroid/widget/TextView;

    const-string/jumbo v5, "scaleY"

    new-array v6, v8, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v10

    const/4 v4, 0x4

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const-string/jumbo v6, "alpha"

    new-array v7, v8, [F

    fill-array-data v7, :array_3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const-string/jumbo v6, "translationY"

    new-array v7, v8, [F

    aput v1, v7, v3

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    aput v1, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v2, v4

    const/4 v1, 0x6

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v8, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x7

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->stateText:Landroid/widget/TextView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v8, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lorg/telegram/ui/VoIPActivity$24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$24;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lorg/telegram/ui/VoIPActivity;->textChangingAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->ellAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_3

    :cond_7
    move v0, v1

    goto/16 :goto_4

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data
.end method

.method private showDebugAlert()V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "libtgvoip v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPController;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " debug"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->getDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Close"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/VoIPActivity$15;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/VoIPActivity$15;-><init>(Lorg/telegram/ui/VoIPActivity;Lorg/telegram/ui/ActionBar/AlertDialog;)V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private showDebugCtlAlert()V
    .locals 4

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Set audio bitrate"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "Set expect packet loss %"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "Disable p2p"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "Enable p2p"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "Disable AEC"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "Enable AEC"

    aput-object v3, v1, v2

    new-instance v2, Lorg/telegram/ui/VoIPActivity$16;

    invoke-direct {v2, p0}, Lorg/telegram/ui/VoIPActivity$16;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "VoipFailed"

    const v2, 0x7f080577

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "OK"

    const v2, 0x7f0803c8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lorg/telegram/ui/VoIPActivity$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$23;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showNumberPickerDialog(IIILjava/lang/String;Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 3

    new-instance v0, Landroid/widget/NumberPicker;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    invoke-virtual {v0, p2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    invoke-virtual {v0, p3}, Landroid/widget/NumberPicker;->setValue(I)V

    invoke-virtual {v0, p5}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v1, "Done"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method private showRetry()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean v9, p0, Lorg/telegram/ui/VoIPActivity;->retrying:Z

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v2, "color"

    new-array v3, v10, [I

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_0
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    const-string/jumbo v4, "alpha"

    new-array v5, v10, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    const-string/jumbo v4, "translationX"

    new-array v5, v10, [F

    aput v11, v5, v8

    iget-object v6, p0, Lorg/telegram/ui/VoIPActivity;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    const/high16 v7, 0x42500000    # 52.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    aput-object v0, v2, v10

    const/4 v0, 0x3

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->endBtnIcon:Landroid/view/View;

    const-string/jumbo v4, "rotation"

    new-array v5, v10, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [F

    aput v11, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [F

    aput v11, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x6

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [F

    aput v11, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lorg/telegram/ui/VoIPActivity$20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPActivity$20;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lorg/telegram/ui/VoIPActivity;->retryAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtnBg:Lorg/telegram/ui/Components/voip/FabBackgroundDrawable;

    const-string/jumbo v2, "color"

    new-array v3, v10, [I

    fill-array-data v3, :array_3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        -0x19e1bc
        -0xba43b3
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x3cf90000    # -135.0f
    .end array-data

    :array_3
    .array-data 4
        -0x19e1bc
        -0xba43b3
    .end array-data
.end method

.method private startUpdatingCallDuration()V
    .locals 1

    new-instance v0, Lorg/telegram/ui/VoIPActivity$17;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPActivity$17;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private updateBlurredPhotos(Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$28;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/VoIPActivity$28;-><init>(Lorg/telegram/ui/VoIPActivity;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateKeyView()V
    .locals 8

    const/4 v7, 0x4

    const/high16 v6, 0x41b00000    # 22.0f

    const/4 v1, 0x0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/IdenticonDrawable;

    invoke-direct {v0}, Lorg/telegram/ui/Components/IdenticonDrawable;-><init>()V

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/IdenticonDrawable;->setColors([I)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$EncryptedChat;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getEncryptionKey()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/VoIPService;->getGA()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v0, v0

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojifyForCall([B)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v3, v2, v0

    invoke-static {v3}, Lorg/telegram/messenger/Emoji;->getEmojiDrawable(Ljava/lang/CharSequence;)Lorg/telegram/messenger/Emoji$EmojiDrawable;

    move-result-object v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lorg/telegram/ui/VoIPActivity;->keyEmojiViews:[Landroid/widget/ImageView;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0xffffff
        -0x1
        -0x66000001
        0x33ffffff
    .end array-data
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4

    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->keyEmojiViews:[Landroid/widget/ImageView;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onAudioSettingsChanged()V
    .locals 5

    const v4, 0x7f02018b

    const v3, 0x7f020108

    const/4 v2, 0x0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setVisibility(I)V

    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const v1, 0x7f02015c

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setImageResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpanded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/VoIPActivity;->setEmojiExpanded(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v7, 0x7f0800e3

    const/high16 v6, -0x1000000

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/telegram/ui/VoIPActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v4}, Lorg/telegram/ui/VoIPActivity;->setRequestedOrientation(I)V

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->createContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPActivity;->setContentView(Landroid/view/View;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->getUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->photoView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/VoIPActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$1;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->photoView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0, v5}, Lorg/telegram/ui/VoIPActivity;->setVolumeControlStream(I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->nameText:Landroid/widget/TextView;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$2;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->endBtn:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$3;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$4;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$5;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->chatBtn:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$6;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->spkToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    const-string/jumbo v0, "audio"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->micToggle:Lorg/telegram/ui/Components/voip/CheckableImageView;

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CheckableImageView;->setChecked(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->onAudioSettingsChanged()V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->nameText:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$7;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setListener(Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->declineSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$8;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/voip/CallSwipeView;->setListener(Lorg/telegram/ui/Components/voip/CallSwipeView$Listener;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->cancelBtn:Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/VoIPActivity$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/VoIPActivity$9;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setKeepScreenOn(Z)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "CallEmojiKeyTooltip"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v7, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->emojiExpandedText:Landroid/widget/TextView;

    const-string/jumbo v1, "CallEmojiKeyTooltip"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/VoIPActivity;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v7, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/VoIPActivity;->photoView:Lorg/telegram/ui/Components/BackupImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setVisibility(I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        -0xe4cab2
        -0xdaa483
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/voip/VoIPService;->unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->isIncomingWaiting:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lorg/telegram/ui/VoIPActivity;->retrying:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/VoIPActivity;->finish()V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->onUIForegroundStateChanged(Z)V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    invoke-direct {p0}, Lorg/telegram/ui/VoIPActivity;->callAccepted()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall()V

    new-instance v0, Lorg/telegram/ui/VoIPActivity$14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/VoIPActivity$14;-><init>(Lorg/telegram/ui/VoIPActivity;)V

    invoke-static {p0, v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->permissionDenied(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/VoIPActivity;->acceptSwipe:Lorg/telegram/ui/Components/voip/CallSwipeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/voip/CallSwipeView;->reset()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->onUIForegroundStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/VoIPActivity;->callState:I

    new-instance v0, Lorg/telegram/ui/VoIPActivity$22;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/VoIPActivity$22;-><init>(Lorg/telegram/ui/VoIPActivity;I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/VoIPActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
