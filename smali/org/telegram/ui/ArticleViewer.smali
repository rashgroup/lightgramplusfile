.class public Lorg/telegram/ui/ArticleViewer;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;,
        Lorg/telegram/ui/ArticleViewer$RadialProgressView;,
        Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;,
        Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;,
        Lorg/telegram/ui/ArticleViewer$BlockFooterCell;,
        Lorg/telegram/ui/ArticleViewer$BlockTitleCell;,
        Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;,
        Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;,
        Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;,
        Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;,
        Lorg/telegram/ui/ArticleViewer$BlockDividerCell;,
        Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;,
        Lorg/telegram/ui/ArticleViewer$BlockListCell;,
        Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;,
        Lorg/telegram/ui/ArticleViewer$BlockCollageCell;,
        Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;,
        Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;,
        Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;,
        Lorg/telegram/ui/ArticleViewer$BlockVideoCell;,
        Lorg/telegram/ui/ArticleViewer$WebpageAdapter;,
        Lorg/telegram/ui/ArticleViewer$CheckForLongPress;,
        Lorg/telegram/ui/ArticleViewer$WindowView;,
        Lorg/telegram/ui/ArticleViewer$CheckForTap;,
        Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/ArticleViewer; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final TEXT_FLAG_ITALIC:I = 0x2

.field private static final TEXT_FLAG_MEDIUM:I = 0x1

.field private static final TEXT_FLAG_MONO:I = 0x4

.field private static final TEXT_FLAG_REGULAR:I = 0x0

.field private static final TEXT_FLAG_STRIKE:I = 0x20

.field private static final TEXT_FLAG_UNDERLINE:I = 0x10

.field private static final TEXT_FLAG_URL:I = 0x8

.field private static authorTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static captionTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator; = null

.field private static dividerPaint:Landroid/graphics/Paint; = null

.field private static dotsPaint:Landroid/graphics/Paint; = null

.field private static embedPostAuthorPaint:Landroid/text/TextPaint; = null

.field private static embedPostCaptionTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static embedPostDatePaint:Landroid/text/TextPaint; = null

.field private static embedPostTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static embedTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static errorTextPaint:Landroid/text/TextPaint; = null

.field private static footerTextPaints:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static final gallery_menu_openin:I = 0x3

.field private static final gallery_menu_save:I = 0x1

.field private static final gallery_menu_share:I = 0x2

.field private static headerTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static listTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static paragraphTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static preformattedBackgroundPaint:Landroid/graphics/Paint;

.field private static preformattedTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static progressDrawables:[Landroid/graphics/drawable/Drawable;

.field private static progressPaint:Landroid/graphics/Paint;

.field private static quoteLinePaint:Landroid/graphics/Paint;

.field private static quoteTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static slideshowTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static subheaderTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static subquoteTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static subtitleTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static titleTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field

.field private static urlPaint:Landroid/graphics/Paint;

.field private static videoTextPaints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/text/TextPaint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field public anchors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private animateToScale:F

.field private animateToX:F

.field private animateToY:F

.field private animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

.field private animationEndRunnable:Ljava/lang/Runnable;

.field private animationInProgress:I

.field private animationStartTime:J

.field private animationValue:F

.field private animationValues:[[F

.field private aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private attachedToWindow:Z

.field private backButton:Landroid/widget/ImageView;

.field private backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private barBackground:Landroid/view/View;

.field private blackPaint:Landroid/graphics/Paint;

.field public blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private canDragDown:Z

.field private canZoom:Z

.field private captionTextView:Landroid/widget/TextView;

.field private captionTextViewNew:Landroid/widget/TextView;

.field private captionTextViewOld:Landroid/widget/TextView;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private changingPage:Z

.field private checkingForLongPress:Z

.field private collapsed:Z

.field private containerView:Landroid/widget/FrameLayout;

.field private coords:[I

.field private createdWebViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;",
            ">;"
        }
    .end annotation
.end field

.field private currentActionBarAnimation:Landroid/animation/AnimatorSet;

.field private currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field private currentFileNames:[Ljava/lang/String;

.field private currentHeaderHeight:I

.field private currentIndex:I

.field private currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field private currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

.field private currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

.field private currentRotation:I

.field private currentThumb:Landroid/graphics/Bitmap;

.field private customView:Landroid/view/View;

.field private customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private disableShowCheck:Z

.field private discardTap:Z

.field private dontResetZoomOnFirstLayout:Z

.field private doubleTap:Z

.field private dragY:F

.field private draggingDown:Z

.field private fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private fullscreenTextureView:Landroid/view/TextureView;

.field private fullscreenVideoContainer:Landroid/widget/FrameLayout;

.field private fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private headerView:Landroid/widget/FrameLayout;

.field private hideAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

.field private imageMoveAnimation:Landroid/animation/AnimatorSet;

.field private imagesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private invalidCoords:Z

.field private isActionBarVisible:Z

.field private isPhotoVisible:Z

.field private isPlaying:Z

.field private isVisible:Z

.field private lastInsets:Ljava/lang/Object;

.field private layerShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private leftImage:Lorg/telegram/messenger/ImageReceiver;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private maxX:F

.field private maxY:F

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private minX:F

.field private minY:F

.field private moveStartX:F

.field private moveStartY:F

.field private moving:Z

.field private openUrlReqId:I

.field private pagesStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            ">;"
        }
    .end annotation
.end field

.field private parentActivity:Landroid/app/Activity;

.field private pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

.field private pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

.field private photoAnimationEndRunnable:Ljava/lang/Runnable;

.field private photoAnimationInProgress:I

.field private photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

.field public photoBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private photoContainerBackground:Landroid/view/View;

.field private photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

.field private photoTransitionAnimationStartTime:J

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchStartDistance:F

.field private pinchStartScale:F

.field private pinchStartX:F

.field private pinchStartY:F

.field private pressCount:I

.field private pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

.field private pressedLinkOwnerLayout:Landroid/text/StaticLayout;

.field private pressedLinkOwnerView:Landroid/view/View;

.field private previewsReqId:I

.field private progressView:Lorg/telegram/ui/Components/ContextProgressView;

.field private progressViewAnimation:Landroid/animation/AnimatorSet;

.field private radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

.field private rightImage:Lorg/telegram/messenger/ImageReceiver;

.field private scale:F

.field private scrimPaint:Landroid/graphics/Paint;

.field private scroller:Lorg/telegram/ui/Components/Scroller;

.field private shareButton:Landroid/widget/ImageView;

.field private shareContainer:Landroid/widget/FrameLayout;

.field private showAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

.field private slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

.field private slideDotDrawable:Landroid/graphics/drawable/Drawable;

.field private switchImageAfterAnimation:I

.field private textureUploaded:Z

.field private transitionAnimationStartTime:J

.field private translationX:F

.field private translationY:F

.field private updateProgressRunnable:Ljava/lang/Runnable;

.field private urlPath:Lorg/telegram/ui/Components/LinkPath;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private videoCrossfadeAlpha:F

.field private videoCrossfadeAlphaLastTime:J

.field private videoCrossfadeStarted:Z

.field private videoPlayButton:Landroid/widget/ImageView;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

.field private videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

.field private videoPlayerTime:Landroid/widget/TextView;

.field private videoTextureView:Landroid/view/TextureView;

.field private visibleDialog:Landroid/app/Dialog;

.field private wasLayout:Z

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

.field private zoomAnimation:Z

.field private zooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->captionTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->subquoteTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->slideshowTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->videoTextPaints:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    new-instance v0, Lorg/telegram/ui/Components/LinkPath;

    invoke-direct {v0}, Lorg/telegram/ui/Components/LinkPath;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    new-array v0, v4, [I

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->coords:[I

    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    new-instance v0, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;-><init>(Lorg/telegram/ui/ArticleViewer;I)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->blackPaint:Landroid/graphics/Paint;

    new-array v0, v5, [Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$28;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$28;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    const/16 v0, 0x8

    filled-new-array {v4, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->drawContent(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$10100()[Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10300(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    return v0
.end method

.method static synthetic access$10302(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    return p1
.end method

.method static synthetic access$10400(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$10402(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$10500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$10700(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10902(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$11002(Lorg/telegram/ui/ArticleViewer;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$11100(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->setImages()V

    return-void
.end method

.method static synthetic access$11200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->showAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$11300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->hideAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$11402(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$11602(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    return p1
.end method

.method static synthetic access$11700(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->onPhotoClosed(Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    return-void
.end method

.method static synthetic access$11802(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ClippingImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    return-object v0
.end method

.method static synthetic access$1302(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    return p1
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    return v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scrimPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->onClosed()V

    return-void
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    return v0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    return-object v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/TextPaintUrlSpan;)Lorg/telegram/ui/Components/TextPaintUrlSpan;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->hideActionBar()V

    return-void
.end method

.method static synthetic access$2802(Lorg/telegram/ui/ArticleViewer;Landroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$CheckForLongPress;)Lorg/telegram/ui/ArticleViewer$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    return v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object v0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object p1
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    return v0
.end method

.method static synthetic access$3702(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    return p1
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$User;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->checkScroll(I)V

    return-void
.end method

.method static synthetic access$404(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->pressCount:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/ArticleViewer;I)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/ArticleViewer;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->onSharePressed()V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/ArticleViewer;I)Lorg/telegram/tgnet/TLObject;
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/SeekBar;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPlaying:Z

    return v0
.end method

.method static synthetic access$4902(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->isPlaying:Z

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->scaleToFill()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/ArticleViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->wasLayout:Z

    return v0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/ArticleViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->dontResetZoomOnFirstLayout:Z

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->setScaleToFill()V

    return-void
.end method

.method static synthetic access$5500(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/ArticleViewer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Z)V

    return-void
.end method

.method static synthetic access$5702(Lorg/telegram/ui/ArticleViewer;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5802(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$5900(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5902(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/ContextProgressView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/ArticleViewer;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/ArticleViewer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->showActionBar(I)V

    return-void
.end method

.method static synthetic access$6402(Lorg/telegram/ui/ArticleViewer;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$6500(Lorg/telegram/ui/ArticleViewer;J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lorg/telegram/ui/ArticleViewer;Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer;->checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/ArticleViewer;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ArticleViewer;->createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V

    return-void
.end method

.method static synthetic access$6900()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/ArticleViewer;J)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ArticleViewer;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$7602(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object p1
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object v0
.end method

.method static synthetic access$7702(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentPlayingVideo:Lorg/telegram/ui/Components/WebPlayerView;

    return-object p1
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/ArticleViewer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7902(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/ArticleViewer;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$8002(Lorg/telegram/ui/ArticleViewer;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$8300()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$8302(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    sput-object p0, Lorg/telegram/ui/ArticleViewer;->dotsPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    return-object v0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$9100()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$9102(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    sput-object p0, Lorg/telegram/ui/ArticleViewer;->dividerPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->updateVideoPlayerTime()V

    return-void
.end method

.method static synthetic access$9600(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$9700()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$9702(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0

    sput-object p0, Lorg/telegram/ui/ArticleViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static synthetic access$9800()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$9802(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    sput-object p0, Lorg/telegram/ui/ArticleViewer;->progressPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$9900(Lorg/telegram/ui/ArticleViewer;)I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v0

    return v0
.end method

.method private addAllMediaFromBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 5

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v4, :cond_3

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v4, :cond_4

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_1

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v4, :cond_6

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v4, :cond_7

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez v0, :cond_9

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Z)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method private animateTo(FFFZ)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZI)V

    return-void
.end method

.method private animateTo(FFFZI)V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    iput p2, p0, Lorg/telegram/ui/ArticleViewer;->animateToX:F

    iput p3, p0, Lorg/telegram/ui/ArticleViewer;->animateToY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    const-string/jumbo v3, "animationValue"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$41;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$41;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkAnimation()Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    :cond_0
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    :cond_1
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private checkLayoutForLinks(Landroid/view/MotionEvent;Landroid/view/View;Landroid/text/StaticLayout;II)Z
    .locals 9

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_9

    if-lt v0, p4, :cond_e

    invoke-virtual {p3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    add-int/2addr v2, p4

    if-gt v0, v2, :cond_e

    if-lt v1, p5, :cond_e

    invoke-virtual {p3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v2, p5

    if-gt v1, v2, :cond_e

    sub-int/2addr v0, p4

    sub-int/2addr v1, p5

    :try_start_0
    invoke-virtual {p3, v1}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v1

    int-to-float v2, v0

    invoke-virtual {p3, v1, v2}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result v2

    invoke-virtual {p3, v1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    int-to-float v4, v0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_5

    invoke-virtual {p3, v1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v1

    add-float/2addr v1, v3

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_5

    invoke-virtual {p3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    const-class v1, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-interface {v0, v2, v2, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v1, :cond_5

    array-length v2, v1

    if-lez v2, :cond_5

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-interface {v0, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-interface {v0, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    const/4 v2, 0x1

    move v7, v2

    move v2, v3

    :goto_1
    array-length v3, v1

    if-ge v7, v3, :cond_4

    aget-object v8, v1, v7

    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-gt v4, v5, :cond_3

    if-le v3, v2, :cond_11

    :cond_3
    iput-object v8, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    move v2, v3

    move v3, v5

    :goto_2
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v3

    goto :goto_1

    :cond_4
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v4, v1}, Lorg/telegram/ui/Components/LinkPath;->setCurrentLayout(Landroid/text/StaticLayout;IF)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    invoke-virtual {p3, v4, v2, v0}, Landroid/text/StaticLayout;->getSelectionPath(IILandroid/graphics/Path;)V

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_3
    move v0, v6

    :goto_4
    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer;->startCheckLongPress()V

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer;->cancelCheckLongPress()V

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v6

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, 0x0

    const/16 v3, 0x23

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 v0, 0x1

    :goto_5
    move v1, v0

    move-object v0, v3

    :goto_6
    if-nez v1, :cond_a

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    if-nez v1, :cond_a

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ArticleViewer$1;

    invoke-direct {v4, p0, v0, v1}, Lorg/telegram/ui/ArticleViewer$1;-><init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;)V

    invoke-virtual {v3, v1, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    :cond_a
    move v0, v2

    goto/16 :goto_4

    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto/16 :goto_4

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_e
    move v0, v6

    goto/16 :goto_4

    :cond_f
    move v0, v1

    goto :goto_5

    :cond_10
    move-object v0, v3

    goto :goto_6

    :cond_11
    move v3, v4

    goto/16 :goto_2
.end method

.method private checkMinMax(Z)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    :cond_0
    :goto_0
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    :cond_1
    :goto_1
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    return-void

    :cond_2
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    goto :goto_0

    :cond_3
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    goto :goto_1
.end method

.method private checkPhotoAnimation()Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    :cond_0
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    :cond_1
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private checkProgress(IZ)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    if-ne p1, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, p1

    const/4 v3, 0x3

    invoke-virtual {v0, v3, p2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    :goto_1
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_8

    if-nez v4, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v2

    # getter for: Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->access$10600(Lorg/telegram/ui/ArticleViewer$RadialProgressView;)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    :cond_1
    :goto_3
    return-void

    :cond_2
    if-ne p1, v6, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5, p2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_7

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v6, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    :goto_4
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v3, v3, p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setProgress(FZ)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2, p2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_4

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5, p2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    goto :goto_3
.end method

.method private checkScroll(I)V
    .locals 5

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v0, v2, v1

    int-to-float v3, v0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int/2addr v0, p1

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    const v0, 0x3f4ccccd    # 0.8f

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v1, v4, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    int-to-float v1, v2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v3, v2, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    return-void

    :cond_1
    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method private createLayoutForText(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;ILorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/StaticLayout;
    .locals 8

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/high16 v3, -0x1000000

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    sget-object v1, Lorg/telegram/ui/ArticleViewer;->quoteLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Lorg/telegram/ui/ArticleViewer;->preformattedBackgroundPaint:Landroid/graphics/Paint;

    const v2, -0xa0704

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    sget-object v1, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    const v2, 0x3362a9e3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    if-eqz p1, :cond_4

    move-object v1, p1

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v0, :cond_7

    if-nez p2, :cond_7

    iget-object v0, p4, Lorg/telegram/tgnet/TLRPC$PageBlock;->author:Ljava/lang/String;

    if-ne v0, p1, :cond_5

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_3

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setColor(I)V

    :cond_3
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostAuthorPaint:Landroid/text/TextPaint;

    :goto_2
    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v0, :cond_8

    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2, p2, p4}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_5
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    if-nez v0, :cond_6

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    const v2, -0x706860

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    :cond_6
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostDatePaint:Landroid/text/TextPaint;

    goto :goto_2

    :cond_7
    invoke-direct {p0, p2, p2, p4}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v2

    goto :goto_2

    :cond_8
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v6, v3

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto/16 :goto_0
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/ArticleViewer;->animateToX:F

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->animateToY:F

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    move v2, v3

    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v6}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    move/from16 v16, v4

    move v4, v5

    move v5, v3

    move/from16 v3, v16

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_17

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v2, v6

    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    if-nez v6, :cond_17

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    const/high16 v8, 0x42fe0000    # 127.0f

    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v6

    sub-float v2, v10, v2

    mul-float/2addr v2, v9

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v7, v2}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_20

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    if-nez v6, :cond_20

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    if-nez v6, :cond_20

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v6, v4, v6

    if-lez v6, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v13, v2

    :goto_3
    if-eqz v13, :cond_19

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/ArticleViewer;->changingPage:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    if-ne v13, v2, :cond_6

    const/4 v6, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    if-nez v7, :cond_1f

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1f

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->minX:F

    sub-float/2addr v6, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v2

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    neg-int v7, v7

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    :goto_5
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    add-float/2addr v8, v7

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v6

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v10

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v10

    div-float v9, v8, v9

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v8

    int-to-float v8, v8

    int-to-float v12, v11

    div-float/2addr v8, v12

    cmpl-float v12, v9, v8

    if-lez v12, :cond_1a

    :goto_6
    int-to-float v9, v10

    mul-float/2addr v9, v8

    float-to-int v9, v9

    int-to-float v10, v11

    mul-float/2addr v8, v10

    float-to-int v8, v8

    invoke-virtual {v13, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    neg-int v10, v9

    div-int/lit8 v10, v10, 0x2

    neg-int v11, v8

    div-int/lit8 v11, v11, 0x2

    invoke-virtual {v13, v10, v11, v9, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v8, v5, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    neg-float v8, v5

    div-float/2addr v8, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v6, v8, v6

    invoke-virtual {v7, v6}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setScale(F)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v6, 0x1

    aget-object v2, v2, v6

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    const/4 v6, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    if-nez v7, :cond_1e

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v7, v4, v7

    if-lez v7, :cond_1e

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    sub-float v6, v4, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v6, v2

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v2, v7, v2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    :goto_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v8}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1b

    const/4 v8, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    sub-float v9, v3, v6

    sub-float v10, v3, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->scale(FF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v9

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    if-eqz v11, :cond_7

    int-to-float v11, v10

    int-to-float v12, v9

    div-float/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v12}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v14}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v12, v14

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x3c23d70a    # 0.01f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v9}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v9}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v9

    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v10

    div-float v12, v11, v12

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v11

    int-to-float v11, v11

    int-to-float v14, v9

    div-float/2addr v11, v14

    cmpl-float v14, v12, v11

    if-lez v14, :cond_1c

    :goto_9
    int-to-float v10, v10

    mul-float/2addr v10, v11

    float-to-int v10, v10

    int-to-float v9, v9

    mul-float/2addr v9, v11

    float-to-int v9, v9

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v12, v10

    div-int/lit8 v12, v12, 0x2

    neg-int v14, v9

    div-int/lit8 v14, v14, 0x2

    invoke-virtual {v11, v12, v14, v10, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_9
    if-eqz v8, :cond_b

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlphaLastTime:J

    :cond_a
    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    mul-float/2addr v10, v2

    invoke-virtual {v9, v10}, Landroid/view/TextureView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    if-eqz v9, :cond_b

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlphaLastTime:J

    sub-long v14, v10, v14

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlphaLastTime:J

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    long-to-float v10, v14

    const/high16 v11, 0x43960000    # 300.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_b

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    if-nez v8, :cond_d

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v8, v5, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v6, v8, v6

    invoke-virtual {v7, v6}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setScale(F)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    if-ne v13, v2, :cond_0

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    mul-float/2addr v2, v6

    const/high16 v6, 0x41f00000    # 30.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    neg-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v2, v4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v7

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v8

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v6, v7

    div-float v6, v2, v6

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    int-to-float v9, v8

    div-float/2addr v2, v9

    cmpl-float v9, v6, v2

    if-lez v9, :cond_1d

    :goto_a
    int-to-float v6, v7

    mul-float/2addr v6, v2

    float-to-int v6, v6

    int-to-float v7, v8

    mul-float/2addr v2, v7

    float-to-int v2, v2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v13, v7}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    neg-int v7, v6

    div-int/lit8 v7, v7, 0x2

    neg-int v8, v2

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v13, v7, v8, v6, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    div-float v2, v5, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v4, v6

    mul-float/2addr v2, v4

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    neg-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    neg-float v4, v5

    div-float v3, v4, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setScale(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->animateToX:F

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->animateToY:F

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/telegram/ui/ArticleViewer;->zoomAnimation:Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->getStartX()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->getStartX()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->getCurrX()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->getStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/Scroller;->getCurrY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v3}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_16

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/ArticleViewer;->setImageIndex(IZ)V

    :cond_14
    :goto_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->scale:F

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/ArticleViewer;->setImageIndex(IZ)V

    goto :goto_b

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    const/16 v6, 0xff

    invoke-virtual {v2, v6}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ArticleViewer;->minX:F

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    cmpg-float v6, v4, v6

    if-gez v6, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v13, v2

    goto/16 :goto_3

    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_1a
    move v8, v9

    goto/16 :goto_6

    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_1c
    move v11, v12

    goto/16 :goto_9

    :cond_1d
    move v2, v6

    goto/16 :goto_a

    :cond_1e
    move v7, v4

    goto/16 :goto_7

    :cond_1f
    move v7, v4

    goto/16 :goto_5

    :cond_20
    move-object v13, v2

    goto/16 :goto_3
.end method

.method private drawLayoutLink(Landroid/graphics/Canvas;Landroid/text/StaticLayout;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLinkOwnerLayout:Landroid/text/StaticLayout;

    if-eq v0, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pressedLink:Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->urlPath:Lorg/telegram/ui/Components/LinkPath;

    sget-object v1, Lorg/telegram/ui/ArticleViewer;->urlPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getContainerViewHeight()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->getHeight()I

    move-result v0

    return v0
.end method

.method private getContainerViewWidth()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->getWidth()I

    move-result v0

    return v0
.end method

.method private getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method private getFileLocation(I[I)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_5

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v1, p2, v3

    aget v1, p2, v3

    if-nez v1, :cond_2

    aput v4, p2, v3

    :cond_2
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_3
    aput v4, p2, v3

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v2, :cond_4

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v1, p2, v3

    aget v1, p2, v3

    if-nez v1, :cond_6

    aput v4, p2, v3

    :cond_6
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0
.end method

.method private getFileName(I)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->access$11900(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object v4

    if-ne v4, p2, :cond_3

    invoke-virtual {v1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->access$12000(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    instance-of v0, v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$12100(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v4

    if-ne v4, p2, :cond_3

    invoke-virtual {v1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$12200(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    goto :goto_1

    :cond_2
    instance-of v0, v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    if-eqz v0, :cond_4

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->innerListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$12300(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/telegram/ui/ArticleViewer;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    instance-of v0, v1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    if-eqz v0, :cond_3

    check-cast v1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8800(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/telegram/ui/ArticleViewer;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lorg/telegram/ui/ArticleViewer;
    .locals 2

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/ui/ArticleViewer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/ArticleViewer;

    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer;-><init>()V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    :cond_0
    monitor-exit v1

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getMedia(I)Lorg/telegram/tgnet/TLObject;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->photo_id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->photo_id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private getMediaFile(I)Ljava/io/File;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->photo_id:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->photo_id:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method private getPlaceForPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->coords:[I

    invoke-direct {p0, v0, p1, v1}, Lorg/telegram/ui/ArticleViewer;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;-><init>()V

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->coords:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewX:I

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->coords:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentHeaderHeight:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipTopAddition:I

    goto :goto_0
.end method

.method private getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x21

    const/4 v3, 0x0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_3

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_4

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_7

    new-instance v2, Landroid/text/SpannableStringBuilder;

    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    new-instance v4, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_6

    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v0

    :goto_1
    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, v4, v3, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v2

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_a

    new-instance v2, Landroid/text/SpannableStringBuilder;

    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-virtual {v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    new-instance v4, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    if-eqz v0, :cond_8

    array-length v0, v0

    if-nez v0, :cond_9

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v1

    :cond_9
    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, v4, v3, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_a
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v0, :cond_b

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-eqz v0, :cond_c

    const-string/jumbo v0, ""

    goto/16 :goto_0

    :cond_c
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    if-eqz v0, :cond_11

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_10

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v5

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_e

    instance-of v1, v1, Landroid/text/SpannableStringBuilder;

    if-nez v1, :cond_e

    and-int/lit8 v1, v5, 0x8

    if-eqz v1, :cond_f

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v1

    :cond_d
    new-instance v5, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/Components/TextPaintUrlSpan;-><init>(Landroid/text/TextPaint;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, v5, v6, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_e
    :goto_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_f
    new-instance v1, Lorg/telegram/ui/Components/TextPaintSpan;

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/ArticleViewer;->getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/TextPaintSpan;-><init>(Landroid/text/TextPaint;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v2, v1, v6, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_10
    move-object v0, v2

    goto/16 :goto_0

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not supported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_6
    if-eqz p1, :cond_7

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextPaint(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Landroid/text/TextPaint;
    .locals 10

    const/high16 v9, 0x41700000    # 15.0f

    const/4 v8, 0x1

    const v1, -0x7c736a

    const/high16 v0, -0x1000000

    const/high16 v7, 0x41600000    # 14.0f

    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->getTextFlags(Lorg/telegram/tgnet/TLRPC$RichText;)I

    move-result v5

    const/4 v4, 0x0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v2, -0x10000

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v6, :cond_1

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->captionTextPaints:Ljava/util/HashMap;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    move v3, v0

    move-object v4, v2

    :goto_0
    if-nez v4, :cond_12

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v8}, Landroid/text/TextPaint;-><init>(I)V

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->errorTextPaint:Landroid/text/TextPaint;

    :goto_1
    return-object v0

    :cond_1
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v6, :cond_2

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->titleTextPaints:Ljava/util/HashMap;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v3, v1

    move-object v4, v2

    move v1, v0

    goto :goto_0

    :cond_2
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v6, :cond_3

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->authorTextPaints:Ljava/util/HashMap;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    move v3, v0

    move-object v4, v2

    goto :goto_0

    :cond_3
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v6, :cond_4

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->footerTextPaints:Ljava/util/HashMap;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    move v3, v0

    move-object v4, v2

    goto :goto_0

    :cond_4
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-eqz v6, :cond_5

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->subtitleTextPaints:Ljava/util/HashMap;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v3, v1

    move-object v4, v2

    move v1, v0

    goto :goto_0

    :cond_5
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v6, :cond_6

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->headerTextPaints:Ljava/util/HashMap;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v3, v1

    move-object v4, v2

    move v1, v0

    goto :goto_0

    :cond_6
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v6, :cond_7

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->subheaderTextPaints:Ljava/util/HashMap;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v3, v1

    move-object v4, v2

    move v1, v0

    goto :goto_0

    :cond_7
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-nez v6, :cond_8

    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v6, :cond_a

    :cond_8
    iget-object v6, p3, Lorg/telegram/tgnet/TLRPC$PageBlock;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v6, p1, :cond_9

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->quoteTextPaints:Ljava/util/HashMap;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v3, v1

    move-object v4, v2

    move v1, v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v0, p1, :cond_20

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->subquoteTextPaints:Ljava/util/HashMap;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    move v3, v0

    move-object v4, v2

    goto/16 :goto_0

    :cond_a
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v6, :cond_b

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->preformattedTextPaints:Ljava/util/HashMap;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v3, v1

    move-object v4, v2

    move v1, v0

    goto/16 :goto_0

    :cond_b
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v6, :cond_d

    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    if-ne v2, p1, :cond_c

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostCaptionTextPaints:Ljava/util/HashMap;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    move v3, v0

    move-object v4, v2

    goto/16 :goto_0

    :cond_c
    sget-object v2, Lorg/telegram/ui/ArticleViewer;->paragraphTextPaints:Ljava/util/HashMap;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v3, v1

    move-object v4, v2

    move v1, v0

    goto/16 :goto_0

    :cond_d
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v6, :cond_e

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->listTextPaints:Ljava/util/HashMap;

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v3, v1

    move-object v4, v2

    move v1, v0

    goto/16 :goto_0

    :cond_e
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v6, :cond_f

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedTextPaints:Ljava/util/HashMap;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    move v3, v0

    move-object v4, v2

    goto/16 :goto_0

    :cond_f
    instance-of v6, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v6, :cond_10

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->slideshowTextPaints:Ljava/util/HashMap;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    move v3, v0

    move-object v4, v2

    goto/16 :goto_0

    :cond_10
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v1, :cond_11

    if-eqz p2, :cond_20

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->embedPostTextPaints:Ljava/util/HashMap;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v3, v1

    move-object v4, v2

    move v1, v0

    goto/16 :goto_0

    :cond_11
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v1, :cond_20

    sget-object v2, Lorg/telegram/ui/ArticleViewer;->videoTextPaints:Ljava/util/HashMap;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v3, v1

    move-object v4, v2

    move v1, v0

    goto/16 :goto_0

    :cond_12
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextPaint;

    if-nez v0, :cond_16

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v8}, Landroid/text/TextPaint;-><init>(I)V

    and-int/lit8 v0, v5, 0x4

    if-eqz v0, :cond_17

    const-string/jumbo v0, "fonts/rmono.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_13
    :goto_2
    and-int/lit8 v0, v5, 0x20

    if-eqz v0, :cond_14

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_14
    and-int/lit8 v0, v5, 0x10

    if-eqz v0, :cond_15

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_15
    and-int/lit8 v0, v5, 0x8

    if-eqz v0, :cond_1f

    const v0, -0xb27c4d

    :goto_3
    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_16
    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/16 :goto_1

    :cond_17
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-nez v0, :cond_18

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-nez v0, :cond_18

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-nez v0, :cond_18

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v0, :cond_1c

    :cond_18
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_19

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_19

    const-string/jumbo v0, "serif"

    const/4 v6, 0x3

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    :cond_19
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "serif"

    invoke-static {v0, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    :cond_1a
    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_1b

    const-string/jumbo v0, "serif"

    const/4 v6, 0x2

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    :cond_1b
    const-string/jumbo v0, "serif"

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_2

    :cond_1c
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_1d

    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "fonts/rmediumitalic.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_2

    :cond_1d
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_2

    :cond_1e
    and-int/lit8 v0, v5, 0x2

    if-eqz v0, :cond_13

    const-string/jumbo v0, "fonts/ritalic.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_2

    :cond_1f
    move v0, v1

    goto/16 :goto_3

    :cond_20
    move v1, v2

    goto/16 :goto_0
.end method

.method private getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;
    .locals 1

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getUrl(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->email:Ljava/lang/String;

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->url:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goToNext()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    mul-float/2addr v0, v1

    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float v0, v2, v0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    return-void
.end method

.method private goToPrev()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    mul-float/2addr v0, v1

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v0, v2

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    return-void
.end method

.method private hideActionBar()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private isMediaVideo(I)Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->video_id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onActionClick(Z)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v5

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1, v4}, Lorg/telegram/ui/ArticleViewer;->preparePlayer(Ljava/io/File;Z)V

    goto :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method

.method private onClosed()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->destroyWebView(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$26;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$26;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onPhotoClosed(Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    iput-boolean v5, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v3, v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$40;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$40;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->post(Ljava/lang/Runnable;)Z

    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    if-eqz p1, :cond_3

    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_3
    return-void
.end method

.method private onPhotoShow(ILorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aput-object v1, v0, v5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v5}, Lorg/telegram/ui/ArticleViewer;->setImageIndex(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->onActionClick(Z)V

    :cond_3
    return-void
.end method

.method private onSharePressed()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getMediaFile(I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v2, "ShareFile"

    const v3, 0x7f0804f2

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "AppName"

    const v2, 0x7f080086

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "OK"

    const v2, 0x7f0803c8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const-string/jumbo v1, "PleaseDownload"

    const v2, 0x7f08044f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->showDialog(Landroid/app/Dialog;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private open(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 12

    const/16 v5, 0x8

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    if-eqz p2, :cond_3

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;-><init>()V

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->url:Ljava/lang/String;

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pagePart;

    if-eqz v1, :cond_8

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    :goto_1
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/ArticleViewer$15;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/ArticleViewer$15;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v1, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v10, v2}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ArticleViewer$WindowView;->setInnerTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/high16 v0, 0x42600000    # 56.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->checkScroll(I)V

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    instance-of v7, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v7, :cond_9

    :try_start_0
    iget-object v7, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v9, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v0, v9

    invoke-virtual {v7, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_4
    const/16 v7, 0x23

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_b

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    invoke-direct {p0, v5, v0}, Lorg/telegram/ui/ArticleViewer;->addPageToStack(Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->attachedToWindow:Z

    if-eqz v1, :cond_5

    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_5
    :goto_4
    :try_start_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v3, -0x7ffeff00

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x408

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->setFocusable(Z)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    iput v4, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/ArticleViewer$WindowView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v5, "alpha"

    new-array v6, v11, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v11, [F

    fill-array-data v6, :array_1

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v4

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v5, "translationX"

    new-array v6, v11, [F

    const/high16 v7, 0x42600000    # 56.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v2

    aput v10, v6, v4

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lorg/telegram/ui/ArticleViewer$16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$16;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lorg/telegram/ui/ArticleViewer$17;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$17;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    new-instance v1, Lorg/telegram/ui/ArticleViewer$18;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ArticleViewer$18;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v11, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_7
    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->showActionBar(I)V

    move v2, v4

    goto/16 :goto_0

    :cond_8
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$WebPage;->hash:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getWebPage;->hash:I

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :catch_2
    move-exception v1

    goto/16 :goto_4

    :cond_b
    move-object v0, v3

    goto/16 :goto_3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private openPreviewsChat(Lorg/telegram/tgnet/TLRPC$User;J)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "user_id"

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "botUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "webpage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    new-instance v2, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2, v4, v5}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    invoke-virtual {p0, v4, v5}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    goto :goto_0
.end method

.method private preparePlayer(Ljava/io/File;Z)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v5, 0x11

    const/4 v4, 0x4

    const-wide/16 v10, 0x3c

    const/4 v3, -0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->releasePlayer()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v3, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v8, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v8}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-static {v3, v3, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iput-boolean v8, p0, Lorg/telegram/ui/ArticleViewer;->textureUploaded:Z

    iput-boolean v8, p0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeStarted:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->videoCrossfadeAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_3

    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$29;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$29;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const-wide/16 v0, 0x0

    :cond_2
    :goto_1
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string/jumbo v3, "%02d:%02d / %02d:%02d"

    new-array v4, v4, [Ljava/lang/Object;

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    rem-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    rem-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "other"

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    goto/16 :goto_0

    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v0, :cond_0

    iget-wide v6, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->doubleTap:Z

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->doubleTap:Z

    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->checkMinMax(Z)V

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    :cond_3
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->discardTap:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->changingPage:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v2, v5

    float-to-double v6, v2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartDistance:F

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartX:F

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartY:F

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_5
    :goto_1
    move v0, v4

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->changingPage:Z

    if-nez v0, :cond_8

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->discardTap:Z

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartDistance:F

    div-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-gtz v5, :cond_a

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_b

    :cond_a
    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->discardTap:Z

    :cond_b
    iget-boolean v5, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-nez v5, :cond_d

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_d

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_d

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    cmpl-float v0, v2, v0

    if-lez v0, :cond_d

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, v4, v3}, Lorg/telegram/ui/ArticleViewer;->toggleActionBar(ZZ)V

    :cond_c
    move v0, v3

    goto/16 :goto_0

    :cond_d
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    :cond_e
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->invalidCoords:Z

    if-nez v0, :cond_19

    iget-wide v6, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_19

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v0, v5

    iget-boolean v5, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    if-nez v5, :cond_10

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_10

    :cond_f
    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_5

    :cond_10
    iget-boolean v5, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    if-nez v5, :cond_11

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    move v0, v1

    move v2, v1

    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_12

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_14

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    div-float/2addr v2, v11

    :cond_14
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_17

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_17

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v3, v0

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_16

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    :goto_2
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_15

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    :cond_16
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v3, v0

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_2e

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    goto :goto_2

    :cond_17
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_18

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2e

    :cond_18
    div-float v1, v0, v11

    goto :goto_2

    :cond_19
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->invalidCoords:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    goto/16 :goto_1

    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_5

    :cond_1b
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    if-eqz v0, :cond_22

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->invalidCoords:Z

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_1c

    invoke-direct {p0, v10}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    invoke-direct {p0, v10, v1, v1, v3}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    :goto_3
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    goto/16 :goto_1

    :cond_1c
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_21

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    div-float v2, v11, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartY:F

    sub-float/2addr v2, v5

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    div-float v5, v11, v5

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-direct {p0, v11}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1f

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    :cond_1d
    :goto_4
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_20

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    :cond_1e
    :goto_5
    invoke-direct {p0, v11, v0, v1, v3}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    goto :goto_3

    :cond_1f
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1d

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    goto :goto_4

    :cond_20
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1e

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    goto :goto_5

    :cond_21
    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer;->checkMinMax(Z)V

    goto :goto_3

    :cond_22
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    if-eqz v0, :cond_24

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v2, v5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_23

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    :goto_6
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    goto/16 :goto_1

    :cond_23
    invoke-direct {p0, v10, v1, v1, v4}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    goto :goto_6

    :cond_24
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v5}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_25

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_25

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    :cond_25
    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    sub-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_26

    const v5, 0x44228000    # 650.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_27

    :cond_26
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->goToNext()V

    move v0, v3

    goto/16 :goto_0

    :cond_27
    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_28

    const v5, 0x44228000    # 650.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_29

    :cond_28
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->goToPrev()V

    move v0, v3

    goto/16 :goto_0

    :cond_29
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2b

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    :cond_2a
    :goto_7
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2c

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    :goto_8
    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, v4}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    goto/16 :goto_1

    :cond_2b
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2a

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    goto :goto_7

    :cond_2c
    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2d

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    goto :goto_8

    :cond_2d
    move v1, v2

    goto :goto_8

    :cond_2e
    move v1, v0

    goto/16 :goto_2
.end method

.method private releasePlayer()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoTextureView:Landroid/view/TextureView;

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPlaying:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPlaying:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private removeLastPageFromStack()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->updateInterfaceForCurrentPage(Z)V

    move v0, v1

    goto :goto_0
.end method

.method private saveCurrentPagePosition()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_1
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "articles"

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "article"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "o"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private scaleToFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private setCurrentCaption(Ljava/lang/CharSequence;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    new-instance v0, Lorg/telegram/ui/ArticleViewer$31;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$31;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setImageIndex(IZ)V
    .locals 13

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    if-ltz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    :cond_3
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-ne v1, v0, :cond_b

    move v1, v2

    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v4, v5, v7}, Lorg/telegram/ui/ArticleViewer;->getText(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/telegram/ui/ArticleViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "AttachGif"

    const v7, 0x7f0800b3

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    move v4, v0

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v7

    move v5, v3

    :goto_3
    if-ge v5, v7, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v8, v0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    if-eqz v8, :cond_f

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8500(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_f

    # getter for: Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->innerListView:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$8800(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0, v8, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getPlaceForPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_8
    :goto_5
    if-nez v1, :cond_a

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->draggingDown:Z

    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    iput v12, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->animateToX:F

    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->animateToY:F

    iput v12, p0, Lorg/telegram/ui/ArticleViewer;->animateToScale:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->releasePlayer()V

    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartDistance:F

    iput v12, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartScale:F

    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterX:F

    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchCenterY:F

    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartX:F

    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->pinchStartY:F

    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->moveStartX:F

    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->moveStartY:F

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->zooming:Z

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->moving:Z

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->doubleTap:Z

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->invalidCoords:Z

    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->canDragDown:Z

    iput-boolean v3, p0, Lorg/telegram/ui/ArticleViewer;->changingPage:Z

    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->switchImageAfterAnimation:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_12

    if-nez v4, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v3

    # getter for: Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->access$10600(Lorg/telegram/ui/ArticleViewer$RadialProgressView;)I

    move-result v0

    if-eqz v0, :cond_12

    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    :cond_a
    const/4 v0, -0x1

    if-ne v6, v0, :cond_13

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->setImages()V

    move v0, v3

    :goto_7
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_b
    move v1, v3

    goto/16 :goto_1

    :cond_c
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_e

    if-eqz v0, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "AttachVideo"

    const v7, 0x7f0800b8

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_8
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    move v4, v0

    goto/16 :goto_2

    :cond_d
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "AttachPhoto"

    const v7, 0x7f0800b6

    invoke-static {v5, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "Of"

    const v7, 0x7f0803c9

    new-array v8, v11, [Ljava/lang/Object;

    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v5, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_f
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->showAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPlaceObject:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->hideAfterAnimation:Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    goto/16 :goto_5

    :cond_12
    move v0, v3

    goto/16 :goto_6

    :cond_13
    invoke-direct {p0, v3, v3}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    if-le v6, v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v4, v4, v11

    aput-object v4, v1, v3

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aput-object v0, v1, v11

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    invoke-direct {p0, v11, v3}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    goto/16 :goto_0

    :cond_14
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v4, v4, v2

    aput-object v4, v1, v3

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aput-object v0, v1, v2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    invoke-direct {p0, v11, v3}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    goto/16 :goto_0

    :cond_15
    move v1, v3

    move v4, v3

    goto/16 :goto_2
.end method

.method private setImages()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    :cond_0
    return-void
.end method

.method private setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    const/4 v0, 0x1

    new-array v7, v0, [I

    invoke-direct {p0, p2, v7}, Lorg/telegram/ui/ArticleViewer;->getFileLocation(I[I)Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    if-ne p1, v3, :cond_b

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object v4, v2

    :goto_0
    const/4 v2, 0x0

    aget v2, v7, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v7, v2

    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v2, 0x50

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v4, :cond_2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    invoke-direct {v0, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v4, v0

    :goto_1
    if-eqz v5, :cond_3

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_2
    const-string/jumbo v6, "b"

    const/4 v0, 0x0

    aget v7, v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    invoke-direct {p0, p2}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v0

    if-eqz v0, :cond_8

    instance-of v0, v1, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    if-ne p1, v2, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentThumb:Landroid/graphics/Bitmap;

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-direct {v6, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_4
    const-string/jumbo v8, "b"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p1

    move-object v7, v1

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02021e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    aget v0, v7, v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02021e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_b
    move-object v4, v2

    goto/16 :goto_0
.end method

.method private setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    :cond_3
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz v0, :cond_4

    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    :cond_4
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    :cond_5
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz v0, :cond_6

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    :cond_7
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz v0, :cond_8

    move-object v0, p2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_0

    :cond_8
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private setScaleToFill()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v3, v2

    div-float v5, v1, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    div-float v0, v1, v0

    div-float v1, v3, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    return-void
.end method

.method private showActionBar(I)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private showProgressView(Z)V
    .locals 10

    const/4 v9, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$19;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$19;-><init>(Lorg/telegram/ui/ArticleViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0
.end method

.method private toggleActionBar(ZZ)V
    .locals 9

    const/16 v4, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz p2, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_5

    move v0, v1

    :goto_0
    aput v0, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_6

    move v0, v1

    :goto_1
    aput v0, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    if-eqz p1, :cond_7

    :goto_2
    aput v1, v5, v7

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$30;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$30;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_b

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_c

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_9
    if-nez p1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_b
    move v0, v2

    goto :goto_4

    :cond_c
    move v0, v2

    goto :goto_5

    :cond_d
    move v1, v2

    goto :goto_6
.end method

.method private updateInterfaceForCurrentPage(Z)V
    .locals 10

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v3, v4

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    if-eqz v1, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v8, v1}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v8, v1}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v8, v1}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    :cond_5
    if-nez v3, :cond_6

    iput-boolean v6, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->first:Z

    :cond_6
    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->addAllMediaFromBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    iput v9, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    move v2, v4

    :goto_3
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_d

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    if-eqz v5, :cond_a

    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_7
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    move v5, v4

    :goto_5
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_5

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v8, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v8, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_5

    :cond_8
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    move v5, v4

    :goto_6
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_5

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v8, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_6

    :cond_9
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move v5, v4

    :goto_7
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_5

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v8, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v8, v2}, Lorg/telegram/ui/ArticleViewer;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_7

    :cond_a
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->anchors:Ljava/util/HashMap;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->name:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_b
    iput v6, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_c

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    :cond_c
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->addAllMediaFromBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_4

    :cond_d
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-nez v1, :cond_2

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;-><init>()V

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pagesStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v6, :cond_f

    if-eqz p1, :cond_12

    :cond_f
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "articles"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "article"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "r"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v0, v7, :cond_10

    move v0, v6

    :goto_8
    if-ne v5, v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "o"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_9
    if-eq v3, v9, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_0

    :cond_10
    move v0, v4

    goto :goto_8

    :cond_11
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_9

    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v4, v4}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto/16 :goto_0
.end method

.method private updateMinMax(F)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-lez v0, :cond_0

    neg-int v2, v0

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    :goto_0
    if-lez v1, :cond_1

    neg-int v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    int-to-float v0, v1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    :goto_1
    return-void

    :cond_0
    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    goto :goto_0

    :cond_1
    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    iput v3, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    goto :goto_1
.end method

.method private updateVideoPlayerTime()V
    .locals 12

    const-wide/16 v4, 0x3e8

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x3c

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_1

    const-string/jumbo v0, "00:00 / 00:00"

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    div-long/2addr v0, v4

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    div-long/2addr v2, v4

    cmp-long v4, v2, v6

    if-eqz v4, :cond_2

    cmp-long v4, v0, v6

    if-eqz v4, :cond_2

    const-string/jumbo v4, "%02d:%02d / %02d:%02d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    div-long v8, v0, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    rem-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x2

    div-long v6, v2, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x3

    rem-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "00:00 / 00:00"

    goto :goto_0
.end method


# virtual methods
.method protected cancelCheckLongPress()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForLongPress:Lorg/telegram/ui/ArticleViewer$CheckForLongPress;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public close(ZZ)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v9, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    :cond_2
    :goto_1
    if-eqz p2, :cond_0

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    if-eqz v0, :cond_4

    if-nez p2, :cond_b

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    if-eqz p2, :cond_0

    :cond_4
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    invoke-virtual {v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->openUrlReqId:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V

    :cond_5
    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    if-eqz v0, :cond_6

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    invoke-virtual {v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    iput v2, p0, Lorg/telegram/ui/ArticleViewer;->previewsReqId:I

    invoke-direct {p0, v2}, Lorg/telegram/ui/ArticleViewer;->showProgressView(Z)V

    :cond_6
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->saveCurrentPagePosition()V

    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->removeLastPageFromStack()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v5, "alpha"

    new-array v6, v1, [F

    aput v8, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v1, [F

    aput v8, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v5, "translationX"

    new-array v6, v7, [F

    aput v8, v6, v2

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    aput v2, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iput v7, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    new-instance v1, Lorg/telegram/ui/ArticleViewer$24;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$24;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lorg/telegram/ui/ArticleViewer$25;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$25;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v7, v9}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_9
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3
.end method

.method public closePhoto(Z)V
    .locals 11

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkPhotoAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->releasePlayer()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->getPlaceForPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v4

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v1

    const/4 v0, 0x0

    if-eqz v4, :cond_3

    iget-object v6, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v6, :cond_3

    iget-object v0, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v0

    :cond_3
    if-eqz v0, :cond_f

    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    if-eqz v4, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v0, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    iget-object v0, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v2, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v1, v0

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    div-float v2, v0, v2

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v6

    int-to-float v0, v0

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    cmpl-float v6, v2, v0

    if-lez v6, :cond_4

    move v2, v0

    :cond_4
    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    mul-float/2addr v0, v6

    mul-float/2addr v0, v2

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    mul-float/2addr v3, v6

    mul-float v6, v3, v2

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v0, v3, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v0, v7, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    :goto_4
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    add-float/2addr v0, v7

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    add-float/2addr v3, v6

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    mul-float/2addr v3, v2

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    if-eqz v4, :cond_a

    iget-object v0, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v0, 0x2

    new-array v2, v0, [I

    iget-object v0, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x1

    aget v0, v2, v0

    iget v7, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    sub-int/2addr v0, v7

    iget v7, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipTopAddition:I

    add-int/2addr v0, v7

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    iget v7, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    const/4 v8, 0x1

    aget v2, v2, v8

    iget-object v8, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v2, v8

    sub-int v2, v7, v2

    iget v7, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipBottomAddition:I

    add-int/2addr v2, v7

    if-gez v2, :cond_6

    const/4 v2, 0x0

    :cond_6
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iget v8, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    iget v8, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    iget v8, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewX:I

    int-to-float v8, v8

    iget v9, v1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v10, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x3

    iget v8, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    int-to-float v8, v8

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v9, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v1, v9

    add-float/2addr v1, v8

    aput v1, v6, v7

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v6, 0x1

    aget-object v1, v1, v6

    const/4 v6, 0x4

    int-to-float v3, v3

    iget v7, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v3, v7

    aput v3, v1, v6

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const/4 v3, 0x5

    int-to-float v0, v0

    iget v6, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v0, v6

    aput v0, v1, v3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x6

    int-to-float v2, v2

    iget v3, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x7

    iget v2, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const-string/jumbo v3, "animationProgress"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    const-string/jumbo v3, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_5
    new-instance v0, Lorg/telegram/ui/ArticleViewer$36;

    invoke-direct {v0, p0, v4}, Lorg/telegram/ui/ArticleViewer$36;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {v5, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$37;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$37;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_7
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v0

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v1, v2

    goto/16 :goto_3

    :cond_a
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget v9, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_b

    int-to-float v0, v0

    :goto_7
    aput v0, v7, v8

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x3

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v3, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v2, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_5

    :cond_b
    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_7

    :cond_c
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const-string/jumbo v5, "scaleX"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const v8, 0x3f666666    # 0.9f

    aput v8, v6, v7

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const-string/jumbo v5, "scaleY"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const v8, 0x3f666666    # 0.9f

    aput v8, v6, v7

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    new-instance v1, Lorg/telegram/ui/ArticleViewer$38;

    invoke-direct {v1, p0, v4}, Lorg/telegram/ui/ArticleViewer$38;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$39;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$39;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_d
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_6

    :cond_e
    move v0, v3

    goto/16 :goto_4

    :cond_f
    move v0, v1

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public collapse()V
    .locals 13

    const/4 v12, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->customView:Landroid/view/View;

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v0, 0xc

    new-array v3, v0, [Landroid/animation/Animator;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "translationX"

    new-array v5, v9, [F

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    const/high16 v7, 0x42600000    # 56.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v1

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v0, v8, :cond_7

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_3
    add-int/2addr v0, v7

    int-to-float v0, v0

    aput v0, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v9

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v4, "alpha"

    new-array v5, v9, [F

    aput v10, v5, v1

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v12

    const/4 v0, 0x3

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    aput v10, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    const/high16 v7, 0x42600000    # 56.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x5

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    aput v10, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x6

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v5, "scaleX"

    new-array v6, v9, [F

    aput v11, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v5, "scaleY"

    new-array v6, v9, [F

    aput v11, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x8

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    aput v10, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0x9

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "scaleX"

    new-array v6, v9, [F

    aput v11, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xa

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "translationY"

    new-array v6, v9, [F

    aput v10, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v0, 0xb

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "scaleY"

    new-array v6, v9, [F

    aput v11, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iput-boolean v9, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    iput v12, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    new-instance v0, Lorg/telegram/ui/ArticleViewer$20;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$20;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$21;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v12, v1}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v11, v9}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenedVideo:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WebPlayerView;->exitFullscreen()V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_3
.end method

.method public destroyArticleViewer()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->releasePlayer()V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$WindowView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->destroyWebView(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->createdWebViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    sput-object v3, Lorg/telegram/ui/ArticleViewer;->Instance:Lorg/telegram/ui/ArticleViewer;

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v1, 0x0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    if-ne p1, v0, :cond_2

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    :goto_0
    if-ge v1, v5, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v1

    invoke-virtual {v0, v6, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setProgress(FZ)V

    invoke-direct {p0, v1, v4}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    if-ne p1, v0, :cond_4

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v6, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setProgress(FZ)V

    invoke-direct {p0, v2, v4}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    if-nez v2, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->currentIndex:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/ArticleViewer;->isMediaVideo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->onActionClick(Z)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    if-ne p1, v0, :cond_6

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Float;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v3, v3, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setProgress(FZ)V

    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_6
    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method

.method public getAnimationValue()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    return v0
.end method

.method public isShowingImage(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentMedia:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v0, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/telegram/ui/ArticleViewer;->canZoom:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v1, v1, v9

    if-nez v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/ArticleViewer;->animationStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-nez v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    div-float v3, v8, v3

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    div-float v4, v8, v4

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-direct {p0, v8}, Lorg/telegram/ui/ArticleViewer;->updateMinMax(F)V

    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    :cond_2
    :goto_1
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_5

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    :cond_3
    :goto_2
    invoke-direct {p0, v8, v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer;->doubleTap:Z

    move v0, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    goto :goto_1

    :cond_5
    iget v3, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    goto :goto_2

    :cond_6
    invoke-direct {p0, v9, v3, v3, v2}, Lorg/telegram/ui/ArticleViewer;->animateTo(FFFZ)V

    goto :goto_3
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    iget v0, p0, Lorg/telegram/ui/ArticleViewer;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Scroller;->abortAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    iget v1, p0, Lorg/telegram/ui/ArticleViewer;->translationX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ArticleViewer;->translationY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/ArticleViewer;->minX:F

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer;->maxX:F

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/ArticleViewer;->minY:F

    float-to-int v7, v7

    iget v8, p0, Lorg/telegram/ui/ArticleViewer;->maxY:F

    float-to-int v8, v8

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/ui/Components/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->postInvalidate()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer;->closePhoto(Z)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 8

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->discardTap:Z

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v2

    # getter for: Lorg/telegram/ui/ArticleViewer$RadialProgressView;->backgroundState:I
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->access$10600(Lorg/telegram/ui/ArticleViewer$RadialProgressView;)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v3, 0x3

    if-gt v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewWidth()I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v6

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_2

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->getContainerViewHeight()I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v6

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer;->onActionClick(Z)V

    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/ArticleViewer;->checkProgress(IZ)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isActionBarVisible:Z

    if-nez v0, :cond_3

    move v2, v1

    :cond_3
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/ArticleViewer;->toggleActionBar(ZZ)V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public open(Lorg/telegram/messenger/MessageObject;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ArticleViewer;->open(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    return v0
.end method

.method public openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z
    .locals 12

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkPhotoAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->getPlaceForPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isPhotoVisible:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ArticleViewer;->toggleActionBar(ZZ)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->setAlpha(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->disableShowCheck:Z

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationInProgress:I

    if-eqz p1, :cond_4

    iget-object v0, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer;->isVideoBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-direct {p0, v0, v4}, Lorg/telegram/ui/ArticleViewer;->onPhotoShow(ILorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    iget-object v0, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v0, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v1

    iget-object v0, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v0

    if-eqz v0, :cond_d

    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v2, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ClippingImageView;->setRadius(I)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v0, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->radius:I

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v1, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v1, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v1, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v1, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewX:I

    int-to-float v1, v1

    iget v2, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v5, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v1, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    int-to-float v1, v1

    iget v2, v3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v5, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v1, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v1, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    div-float v1, v0, v1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    cmpl-float v2, v1, v0

    if-lez v2, :cond_6

    move v1, v0

    :cond_6
    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    mul-float v6, v2, v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v0, v7, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->lastInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    :goto_4
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v7

    int-to-float v2, v2

    sub-float/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget-object v7, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v7

    sub-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v2, v3, Landroid/graphics/Rect;->top:I

    iget-object v8, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v8

    sub-int/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v2, 0x2

    new-array v9, v2, [I

    iget-object v2, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget v2, v9, v2

    iget v10, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    iget v11, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v11

    sub-int/2addr v2, v10

    iget v10, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipTopAddition:I

    add-int/2addr v2, v10

    if-gez v2, :cond_7

    const/4 v2, 0x0

    :cond_7
    iget v10, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->viewY:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v10

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v3, v5

    const/4 v5, 0x1

    aget v5, v9, v5

    iget-object v9, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v5, v9

    sub-int/2addr v3, v5

    iget v5, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->clipBottomAddition:I

    add-int/2addr v3, v5

    if-gez v3, :cond_8

    const/4 v3, 0x0

    :cond_8
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v9

    aput v9, v5, v8

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v9

    aput v9, v5, v8

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v9

    aput v9, v5, v8

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v9

    aput v9, v5, v8

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x4

    int-to-float v7, v7

    iget v9, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v7, v9

    aput v7, v5, v8

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/4 v7, 0x5

    int-to-float v2, v2

    iget v8, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v2, v8

    aput v2, v5, v7

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v5, 0x0

    aget-object v2, v2, v5

    const/4 v5, 0x6

    int-to-float v3, v3

    iget v7, v4, Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v3, v7

    aput v3, v2, v5

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x7

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ClippingImageView;->getRadius()I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v3

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aput v1, v2, v3

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aput v6, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationProgress(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const-string/jumbo v5, "animationProgress"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_3

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_4

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lorg/telegram/ui/ArticleViewer$32;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$32;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoAnimationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$33;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$33;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->photoTransitionAnimationStartTime:J

    new-instance v1, Lorg/telegram/ui/ArticleViewer$34;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ArticleViewer$34;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$35;

    invoke-direct {v1, p0, v4}, Lorg/telegram/ui/ArticleViewer$35;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$PlaceProviderObject;)V

    # setter for: Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;->access$11502(Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_4

    :cond_d
    move v0, v1

    goto/16 :goto_2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
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
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setAnimationValue(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer;->animationValue:F

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->invalidate()V

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 11

    const/high16 v7, 0x42600000    # 56.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->layerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020250

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02024f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->slideDotBigDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scrimPaint:Landroid/graphics/Paint;

    new-instance v0, Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$WindowView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ArticleViewer$WindowView;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ArticleViewer$WindowView;->setClipChildren(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ArticleViewer$WindowView;->setFocusable(Z)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/16 v2, 0x33

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$2;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoBackgroundDrawable:Lorg/telegram/ui/ArticleViewer$PhotoBackgroundDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerBackground:Landroid/view/View;

    const/16 v2, 0x33

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ClippingImageView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ClippingImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationValues:[[F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationValues([[F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/16 v2, 0x28

    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/ArticleViewer$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$3;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    const/16 v2, 0x33

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenVideoContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenAspectRatioView:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 v2, 0x11

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->fullscreenTextureView:Landroid/view/TextureView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->barBackground:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$WindowView;->addView(Landroid/view/View;)V

    :cond_2
    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v9, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->adapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v6, v1, v6, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v1, -0xa0909

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$4;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$5;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$6;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$7;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    invoke-static {v5, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v0, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const/high16 v1, 0x43480000    # 200.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setAnimationTime(F)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    const v1, -0x4c4c4d

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BackDrawable;->setColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotated(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const/16 v2, 0x36

    invoke-static {v2, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$8;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$8;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x30

    const/16 v3, 0x38

    const/16 v4, 0x35

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$9;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const v1, 0x7f02016e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    invoke-static {v2, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ContextProgressView;

    invoke-direct {v0, p1, v10}, Lorg/telegram/ui/Components/ContextProgressView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ContextProgressView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->progressView:Lorg/telegram/ui/Components/ContextProgressView;

    const/16 v2, 0x30

    invoke-static {v2, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x63

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, -0x7ffefef8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sput-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v9

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v0, v10

    sget-object v0, Lorg/telegram/ui/ArticleViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020229

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/Scroller;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->scroller:Lorg/telegram/ui/Components/Scroller;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->blackPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x40ffffff    # 7.9999995f

    invoke-virtual {v0, v1, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Of"

    const v2, 0x7f0803c9

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v2, -0x40000000    # -2.0f

    invoke-static {v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$10;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const v1, 0x7f020248

    invoke-virtual {v0, v10, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v1, 0x7f0200f1

    invoke-virtual {v0, v6, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLayoutInScreen(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x3

    const-string/jumbo v2, "OpenInExternalApp"

    const v3, 0x7f0803d6

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v1, "SaveToGallery"

    const v2, 0x7f0804a6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x30

    const/16 v3, 0x53

    invoke-static {v5, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/16 v3, 0x53

    invoke-static {v5, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/16 v3, 0x53

    invoke-static {v5, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v6

    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v1, v0, v9

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-direct {v1, p0, p1, v2}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v1, v0, v10

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->radialProgressViews:[Lorg/telegram/ui/ArticleViewer$RadialProgressView;

    aget-object v0, v0, v10

    invoke-virtual {v0, v6, v6}, Lorg/telegram/ui/ArticleViewer$RadialProgressView;->setBackgroundState(IZ)V

    new-instance v0, Lorg/telegram/ui/Components/SeekBar;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1, v5, v5}, Lorg/telegram/ui/Components/SeekBar;->setColors(III)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$11;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    new-instance v0, Lorg/telegram/ui/ArticleViewer$12;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ArticleViewer$12;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x33

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$13;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$13;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lorg/telegram/ui/ArticleViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->gestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    new-instance v0, Lorg/telegram/ui/ArticleViewer$14;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ArticleViewer$14;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->photoContainerView:Lorg/telegram/ui/ArticleViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v10}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_1
.end method

.method public showDialog(Landroid/app/Dialog;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    :try_start_1
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->visibleDialog:Landroid/app/Dialog;

    new-instance v1, Lorg/telegram/ui/ArticleViewer$27;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$27;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected startCheckLongPress()V
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->checkingForLongPress:Z

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/ui/ArticleViewer$CheckForTap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ArticleViewer$CheckForTap;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->pendingCheckForTap:Lorg/telegram/ui/ArticleViewer$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ArticleViewer$WindowView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public uncollapse()V
    .locals 11

    const/4 v10, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer;->isVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer;->checkAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/16 v1, 0xc

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationX"

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer;->windowView:Lorg/telegram/ui/ArticleViewer$WindowView;

    const-string/jumbo v3, "alpha"

    new-array v4, v7, [F

    aput v9, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v10

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->headerView:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->backButton:Landroid/widget/ImageView;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleX"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "translationY"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer;->shareContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v4, "scaleY"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iput-boolean v6, p0, Lorg/telegram/ui/ArticleViewer;->collapsed:Z

    iput v10, p0, Lorg/telegram/ui/ArticleViewer;->animationInProgress:I

    new-instance v1, Lorg/telegram/ui/ArticleViewer$22;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$22;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    iput-object v1, p0, Lorg/telegram/ui/ArticleViewer;->animationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lorg/telegram/ui/ArticleViewer$23;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$23;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/ArticleViewer;->transitionAnimationStartTime:J

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->containerView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer;->backDrawable:Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-virtual {v1, v8, v7}, Lorg/telegram/ui/ActionBar/BackDrawable;->setRotation(FZ)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method
