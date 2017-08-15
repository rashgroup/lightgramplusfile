.class public Lorg/telegram/ui/PhotoViewer;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PhotoViewer$QualityChooseView;,
        Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;,
        Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;,
        Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;,
        Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;,
        Lorg/telegram/ui/PhotoViewer$PhotoProgressView;,
        Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/PhotoViewer; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator; = null

.field private static final gallery_menu_delete:I = 0x6

.field private static final gallery_menu_masks:I = 0xd

.field private static final gallery_menu_openin:I = 0xb

.field private static final gallery_menu_save:I = 0x1

.field private static final gallery_menu_send:I = 0x3

.field private static final gallery_menu_share:I = 0xa

.field private static final gallery_menu_showall:I = 0x2

.field private static progressDrawables:[Landroid/graphics/drawable/Drawable;

.field private static progressPaint:Landroid/graphics/Paint;


# instance fields
.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actvityContext:Landroid/content/Context;

.field private allowMentions:Z

.field private allowShare:Z

.field private animateToScale:F

.field private animateToX:F

.field private animateToY:F

.field private animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

.field private animationEndRunnable:Ljava/lang/Runnable;

.field private animationInProgress:I

.field private animationStartTime:J

.field private animationValue:F

.field private animationValues:[[F

.field private applying:Z

.field private aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private attachedToWindow:Z

.field private audioFramesSize:J

.field private avatarsArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Photo;",
            ">;"
        }
    .end annotation
.end field

.field private avatarsDialogId:I

.field private backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

.field private bitrate:I

.field private blackPaint:Landroid/graphics/Paint;

.field private bottomLayout:Landroid/widget/FrameLayout;

.field private bottomTouchEnabled:Z

.field private canDragDown:Z

.field private canShowBottom:Z

.field private canZoom:Z

.field private captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

.field private captionItem:Landroid/widget/ImageView;

.field private captionTextView:Landroid/widget/TextView;

.field private captionTextViewNew:Landroid/widget/TextView;

.field private captionTextViewOld:Landroid/widget/TextView;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private changeModeAnimation:Landroid/animation/AnimatorSet;

.field private changingPage:Z

.field private checkImageView:Lorg/telegram/ui/Components/CheckBox;

.field private classGuid:I

.field private compressItem:Landroid/widget/ImageView;

.field private compressionsCount:I

.field private containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

.field private cropItem:Landroid/widget/ImageView;

.field private currentActionBarAnimation:Landroid/animation/AnimatorSet;

.field private currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

.field private currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

.field private currentDialogId:J

.field private currentEditMode:I

.field private currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private currentFileNames:[Ljava/lang/String;

.field private currentIndex:I

.field private currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private currentPathObject:Ljava/lang/String;

.field private currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private currentPlayingVideoFile:Ljava/io/File;

.field private currentSubtitle:Ljava/lang/String;

.field private currentThumb:Landroid/graphics/Bitmap;

.field private currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private dateTextView:Landroid/widget/TextView;

.field private disableShowCheck:Z

.field private discardTap:Z

.field private doneButtonPressed:Z

.field private dontResetZoomOnFirstLayout:Z

.field private doubleTap:Z

.field private dragY:F

.field private draggingDown:Z

.field private editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private endReached:[Z

.field private endTime:J

.field private estimatedDuration:J

.field private estimatedSize:I

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private ignoreDidSetImage:Z

.field private imageMoveAnimation:Landroid/animation/AnimatorSet;

.field private imagesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrLocationsSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private imagesArrTemp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesByIds:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private imagesByIdsTemp:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private inPreview:Z

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private invalidCoords:Z

.field private isActionBarVisible:Z

.field private isFirstLoading:Z

.field private isPlaying:Z

.field private isVisible:Z

.field private lastInsets:Ljava/lang/Object;

.field private lastTitle:Ljava/lang/String;

.field private leftImage:Lorg/telegram/messenger/ImageReceiver;

.field private loadInitialVideo:Z

.field private loadingMoreImages:Z

.field private masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private maxX:F

.field private maxY:F

.field private mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private mentionListAnimation:Landroid/animation/AnimatorSet;

.field private mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

.field private menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private mergeDialogId:J

.field private minX:F

.field private minY:F

.field private moveStartX:F

.field private moveStartY:F

.field private moving:Z

.field private muteItem:Landroid/widget/ImageView;

.field private muteVideo:Z

.field private nameTextView:Landroid/widget/TextView;

.field private needCaptionLayout:Z

.field private needSearchImageInArr:Z

.field private opennedFromMedia:Z

.field private originalBitrate:I

.field private originalHeight:I

.field private originalSize:J

.field private originalWidth:I

.field private paintItem:Landroid/widget/ImageView;

.field private parentActivity:Landroid/app/Activity;

.field private parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

.field private parentChatActivity:Lorg/telegram/ui/ChatActivity;

.field private photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

.field private photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

.field private photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

.field private photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

.field private pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private pinchCenterX:F

.field private pinchCenterY:F

.field private pinchStartDistance:F

.field private pinchStartScale:F

.field private pinchStartX:F

.field private pinchStartY:F

.field private placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private previewViewEnd:I

.field private previousCompression:I

.field private progressView:Lorg/telegram/ui/Components/RadialProgressView;

.field private qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

.field private qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

.field private qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

.field private requestingPreview:Z

.field private resetButton:Landroid/widget/TextView;

.field private resultHeight:I

.field private resultWidth:I

.field private rightImage:Lorg/telegram/messenger/ImageReceiver;

.field private rotationValue:I

.field private scale:F

.field private scroller:Landroid/widget/Scroller;

.field private selectedCompression:I

.field private sendPhotoType:I

.field private shareButton:Landroid/widget/ImageView;

.field private showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

.field private startTime:J

.field private switchImageAfterAnimation:I

.field private textureUploaded:Z

.field private totalImagesCount:I

.field private totalImagesCountMerge:I

.field private transitionAnimationStartTime:J

.field private translationX:F

.field private translationY:F

.field private tryStartRequestPreviewOnFinish:Z

.field private tuneItem:Landroid/widget/ImageView;

.field private updateProgressRunnable:Ljava/lang/Runnable;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private videoCrossfadeAlpha:F

.field private videoCrossfadeAlphaLastTime:J

.field private videoCrossfadeStarted:Z

.field private videoDuration:F

.field private videoFramesSize:J

.field private videoPlayButton:Landroid/widget/ImageView;

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

.field private videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

.field private videoPlayerTime:Landroid/widget/TextView;

.field private videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

.field private videoTextureView:Landroid/view/TextureView;

.field private videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

.field private videoTimelineViewContainer:Landroid/widget/FrameLayout;

.field private visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

.field private wasLayout:Z

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;

.field private zoomAnimation:Z

.field private zooming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, -0x1000000

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    new-instance v0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    invoke-direct {v0, p0, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    new-instance v0, Lorg/telegram/ui/PhotoViewer$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$1;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    const/16 v0, 0x8

    filled-new-array {v3, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    iput v4, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    new-array v0, v3, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    new-array v0, v3, [Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/SeekBar;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    return v0
.end method

.method static synthetic access$10000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$10100(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10200(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    return v0
.end method

.method static synthetic access$10202(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    return p1
.end method

.method static synthetic access$10302(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/ActionBar/AlertDialog;)Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object p1
.end method

.method static synthetic access$10500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$10600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object v0
.end method

.method static synthetic access$10602(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoFilterView;)Lorg/telegram/ui/Components/PhotoFilterView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    return-object p1
.end method

.method static synthetic access$10700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoPaintView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    return-object v0
.end method

.method static synthetic access$10702(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/Components/PhotoPaintView;)Lorg/telegram/ui/Components/PhotoPaintView;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    return-object p1
.end method

.method static synthetic access$10800(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$10802(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$10902(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->applying:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-object v0
.end method

.method static synthetic access$11002(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    return p1
.end method

.method static synthetic access$11102(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    return p1
.end method

.method static synthetic access$11202(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    return p1
.end method

.method static synthetic access$11300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method static synthetic access$11400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11500(Lorg/telegram/ui/PhotoViewer;FFFZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    return-void
.end method

.method static synthetic access$11600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11702(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$11800(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$11900(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$12002(Lorg/telegram/ui/PhotoViewer;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    return-wide p1
.end method

.method static synthetic access$12102(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    return p1
.end method

.method static synthetic access$12200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$12202(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$12300(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    return v0
.end method

.method static synthetic access$12402(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    return p1
.end method

.method static synthetic access$12502(Lorg/telegram/ui/PhotoViewer;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$12600(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->setImages()V

    return-void
.end method

.method static synthetic access$12700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$12800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    return-object v0
.end method

.method static synthetic access$12900(Lorg/telegram/ui/PhotoViewer;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    sget-object v0, Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$13000(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$13002(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/view/animation/DecelerateInterpolator;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0

    sput-object p0, Lorg/telegram/ui/PhotoViewer;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method static synthetic access$13200(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method

.method static synthetic access$13300(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->redraw(I)V

    return-void
.end method

.method static synthetic access$13400(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$13402(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$13500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$QualityChooseView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    return-object v0
.end method

.method static synthetic access$13600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$1400()Landroid/graphics/Paint;
    .locals 1

    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    sput-object p0, Lorg/telegram/ui/PhotoViewer;->progressPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700()[Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PickerBottomLayoutViewer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/CheckBox;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z

    return v0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->bottomTouchEnabled:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/PhotoViewer;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/PhotoViewer;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->blackPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->wasLayout:Z

    return v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->wasLayout:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->dontResetZoomOnFirstLayout:Z

    return v0
.end method

.method static synthetic access$3502(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->dontResetZoomOnFirstLayout:Z

    return p1
.end method

.method static synthetic access$3600(Lorg/telegram/ui/PhotoViewer;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    return v0
.end method

.method static synthetic access$3602(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    return p1
.end method

.method static synthetic access$3702(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    return p1
.end method

.method static synthetic access$3802(Lorg/telegram/ui/PhotoViewer;F)F
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    return p1
.end method

.method static synthetic access$3900(Lorg/telegram/ui/PhotoViewer;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/VideoTimelineView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->setScaleToFill()V

    return-void
.end method

.method static synthetic access$4102(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->attachedToWindow:Z

    return p1
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    return-void
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    return v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/MessageObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    return v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    return v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/PhotoViewer;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    return-wide v0
.end method

.method static synthetic access$500(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    return v0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method static synthetic access$5700(Lorg/telegram/ui/PhotoViewer;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5800(Lorg/telegram/ui/PhotoViewer;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    return-void
.end method

.method static synthetic access$5900(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->onSharePressed()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoPlayerTime()V

    return-void
.end method

.method static synthetic access$6000(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6100(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->openCaptionEnter()V

    return-void
.end method

.method static synthetic access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/PhotoViewer;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    return v0
.end method

.method static synthetic access$6400(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoInfo()V

    return-void
.end method

.method static synthetic access$6500(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    return v0
.end method

.method static synthetic access$6502(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    return p1
.end method

.method static synthetic access$6600(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->previousCompression:I

    return v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->didChangedCompressionLevel(Z)V

    return-void
.end method

.method static synthetic access$6800(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->showQualityView(Z)V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    return v0
.end method

.method static synthetic access$7000(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    return p1
.end method

.method static synthetic access$7100(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    return v0
.end method

.method static synthetic access$7102(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    return p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7300(Lorg/telegram/ui/PhotoViewer;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    return-wide v0
.end method

.method static synthetic access$7400(Lorg/telegram/ui/PhotoViewer;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    return-wide v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    return v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    return v0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    return v0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    return v0
.end method

.method static synthetic access$7900(Lorg/telegram/ui/PhotoViewer;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PhotoViewer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8000(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    return v0
.end method

.method static synthetic access$8100(Lorg/telegram/ui/PhotoViewer;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    return-wide v0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8300(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    return v0
.end method

.method static synthetic access$8400(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    return v0
.end method

.method static synthetic access$8402(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    return p1
.end method

.method static synthetic access$8500(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalBitrate:I

    return v0
.end method

.method static synthetic access$8600(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V

    return-void
.end method

.method static synthetic access$8700(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    return v0
.end method

.method static synthetic access$8800(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    return v0
.end method

.method static synthetic access$8900(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$9000(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    return v0
.end method

.method static synthetic access$9002(Lorg/telegram/ui/PhotoViewer;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    return p1
.end method

.method static synthetic access$9100(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoCropView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    return-object v0
.end method

.method static synthetic access$9200(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->applyCurrentEditMode()V

    return-void
.end method

.method static synthetic access$9300(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method static synthetic access$9400(Lorg/telegram/ui/PhotoViewer;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    return v0
.end method

.method static synthetic access$9500(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z

    return v0
.end method

.method static synthetic access$9600(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    return-void
.end method

.method static synthetic access$9700(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Adapters/MentionsAdapter;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    return-object v0
.end method

.method static synthetic access$9800(Lorg/telegram/ui/PhotoViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowMentions:Z

    return v0
.end method

.method static synthetic access$9802(Lorg/telegram/ui/PhotoViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->allowMentions:Z

    return p1
.end method

.method static synthetic access$9900(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$9902(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animateTo(FFFZ)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZI)V

    return-void
.end method

.method private animateTo(FFFZI)V
    .locals 5

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p4, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    iput p2, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    iput p3, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

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

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$62;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$62;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private applyCurrentEditMode()V
    .locals 12

    const/4 v9, 0x0

    const/high16 v11, 0x42f00000    # 120.0f

    const/4 v4, 0x0

    const/16 v5, 0x65

    const/4 v10, 0x1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v0, v10, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoCropView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v8, v9

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x50

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v3, :cond_7

    move-object v7, v1

    check-cast v7, Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-static {v2, v10}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x46

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v10}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    :cond_0
    if-eqz v8, :cond_1

    iget-object v1, v7, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->updatePhotoAtIndex(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v1, v2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->setPhotoChecked(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v2

    invoke-virtual {v1, v2, v10}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    :cond_2
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v1, v10, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeX()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeY()F

    move-result v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v1, v2

    if-lez v3, :cond_9

    :goto_2
    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeX()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getRectY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoCropView;->getRectSizeY()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iput-boolean v10, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    iput-boolean v10, p0, Lorg/telegram/ui/PhotoViewer;->applying:Z

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->onDisappear()V

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v9}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v4, v10}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    iput-boolean v10, p0, Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->ignoreDidSetImage:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v8, v9

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->getMasks()Ljava/util/ArrayList;

    move-result-object v0

    move-object v8, v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    instance-of v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v3, :cond_1

    move-object v7, v1

    check-cast v7, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-static {v2, v10}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x46

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1, v10}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->thumbPath:Ljava/lang/String;

    :cond_8
    if-eqz v8, :cond_1

    iget-object v1, v7, Lorg/telegram/messenger/MediaController$SearchImage;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_9
    move v1, v2

    goto/16 :goto_2

    :cond_a
    move-object v8, v9

    move-object v0, v9

    goto/16 :goto_0
.end method

.method private checkAnimation()Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    :cond_0
    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    :cond_1
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private checkMinMax(Z)V
    .locals 4

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    :cond_0
    :goto_0
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    :cond_1
    :goto_1
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    return-void

    :cond_2
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_0

    :cond_3
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_1
.end method

.method private checkProgress(IZ)V
    .locals 11

    const/4 v9, -0x1

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_16

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-ne p1, v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    move v10, v0

    move-object v0, v1

    move v1, v10

    :cond_3
    :goto_1
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v1, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v7, p2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    :goto_2
    if-nez p1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v0, v0, v3

    # getter for: Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10400(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v3, v2

    :cond_5
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    :cond_6
    :goto_3
    return-void

    :cond_7
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_9
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_b

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    :goto_4
    move v1, v2

    :goto_5
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v4, :cond_1a

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v6, "mp4"

    invoke-static {v0, v6}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_4

    :cond_c
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_d

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v1, v3

    goto :goto_5

    :cond_d
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_19

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_5

    :cond_e
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_10

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v1, :cond_f

    move v1, v2

    :goto_6
    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    move-object v0, v1

    move v1, v3

    goto/16 :goto_1

    :cond_f
    move v1, v3

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    if-eqz v0, :cond_18

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, v1

    move v1, v3

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v9, p2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto/16 :goto_2

    :cond_12
    if-eqz v1, :cond_15

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v0, v0, p1

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    :goto_7
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_13
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v4, v4, p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    goto/16 :goto_2

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto :goto_7

    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3, p2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto :goto_7

    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v9, p2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    goto/16 :goto_3

    :cond_17
    move-object v0, v1

    move v1, v3

    goto/16 :goto_1

    :cond_18
    move-object v0, v1

    move v1, v3

    goto/16 :goto_1

    :cond_19
    move-object v0, v1

    move v1, v3

    goto/16 :goto_5

    :cond_1a
    move-object v0, v1

    goto/16 :goto_4
.end method

.method private closeCaptionEnter(Z)V
    .locals 5

    const/4 v2, 0x0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz p1, :cond_3

    instance-of v0, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_7

    move-object v0, v1

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v0, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v0, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->setPhotoChecked(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v3, v4}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "AttachGif"

    const v4, 0x7f0800b3

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v0, :cond_9

    move-object v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    const v0, 0x7f020213

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    invoke-direct {p0, v1}, Lorg/telegram/ui/PhotoViewer;->updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hidePopup()V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->closeKeyboard()V

    goto/16 :goto_0

    :cond_7
    instance-of v0, v1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getFieldCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v0, "AttachVideo"

    const v4, 0x7f0800b8

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    goto :goto_3

    :cond_a
    const v0, 0x7f020214

    goto :goto_4
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

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoInfo()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V

    :cond_0
    return-void
.end method

.method private getAdditionX()I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAdditionY()I
    .locals 4

    const/16 v3, 0x15

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_0
    add-int/2addr v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v1, :cond_1

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_3

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getContainerViewHeight()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v0

    return v0
.end method

.method private getContainerViewHeight(I)I
    .locals 3

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez p1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/high16 v1, 0x43100000    # 144.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const/high16 v1, 0x431a0000    # 154.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getContainerViewWidth()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v0

    return v0
.end method

.method private getContainerViewWidth(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getWidth()I

    move-result v0

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private getFileLocation(I[I)Lorg/telegram/tgnet/TLObject;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    if-gez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p2, v3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLObject;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v2, :cond_4

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_4
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v1, p2, v3

    aget v1, p2, v3

    if-nez v1, :cond_5

    aput v4, p2, v3

    :cond_5
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_0

    :cond_6
    aput v4, p2, v3

    :cond_7
    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v2, :cond_a

    :cond_9
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_d

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v2, :cond_d

    :cond_a
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_c

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v1, p2, v3

    aget v1, p2, v3

    if-nez v1, :cond_b

    aput v4, p2, v3

    :cond_b
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_0

    :cond_c
    aput v4, p2, v3

    goto :goto_1

    :cond_d
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v2, :cond_e

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->photo:Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v1, p2, v3

    aget v1, p2, v3

    if-nez v1, :cond_f

    aput v4, p2, v3

    :cond_f
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_0
.end method

.method private getFileName(I)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getMessageFileName(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_6

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_a

    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_7

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    iget v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    iget-object v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, ""

    iput-object v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;->localUrl:Ljava/lang/String;

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    const-string/jumbo v2, "jpg"

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v2, :cond_d

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_b

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_c

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v2, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v2, "jpg"

    invoke-static {v0, v2}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_d
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static getInstance()Lorg/telegram/ui/PhotoViewer;
    .locals 2

    sget-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    if-nez v0, :cond_1

    const-class v1, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/telegram/ui/PhotoViewer;

    invoke-direct {v0}, Lorg/telegram/ui/PhotoViewer;-><init>()V

    sput-object v0, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

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

.method private goToNext()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float/2addr v0, v1

    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

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

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    return-void
.end method

.method private goToPrev()V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float/2addr v0, v1

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

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

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    return-void
.end method

.method private onActionClick(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v1, v1, v6

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v1, v0

    :cond_3
    :goto_1
    if-nez v1, :cond_10

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    :goto_2
    if-nez v0, :cond_d

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_9

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0, v1, v7, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v5, "mp4"

    invoke-static {v4, v5}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_8
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_b

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v1, v7, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->isLoadingHttpFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    const-string/jumbo v2, "mp4"

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadHttpFile(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_e

    invoke-direct {p0, v0, v7, v6}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_0

    :cond_e
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_f

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "com.classicgroup.lightgramplus.provider"

    invoke-static {v2, v3, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_f
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_10
    move-object v0, v1

    goto/16 :goto_2

    :cond_11
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/PhotoCropView;->setAnimationProgress(F)V

    :cond_3
    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_4

    move v0, v1

    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    move v13, v2

    move v2, v3

    move v3, v1

    move v1, v13

    :cond_5
    :goto_1
    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v4, :cond_1c

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1c

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_1c

    iget-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    if-nez v4, :cond_1c

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/high16 v6, 0x42fe0000    # 127.0f

    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v4

    sub-float v0, v8, v0

    mul-float/2addr v0, v7

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v5, v0}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    :goto_2
    const/4 v0, 0x0

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v4, :cond_6

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_25

    iget-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    if-nez v4, :cond_25

    iget-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    if-nez v4, :cond_25

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v4, v0

    :goto_3
    if-eqz v4, :cond_1e

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    move-object v0, v4

    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    if-ne v0, v4, :cond_8

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    if-nez v6, :cond_24

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v6, v2, v6

    if-gez v6, :cond_24

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    sub-float/2addr v5, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    neg-int v6, v6

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    :goto_5
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v7, v6

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v5

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v5

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v9

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v10

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v9

    div-float v8, v7, v8

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v7

    int-to-float v7, v7

    int-to-float v11, v10

    div-float/2addr v7, v11

    cmpl-float v11, v8, v7

    if-lez v11, :cond_1f

    :goto_6
    int-to-float v8, v9

    mul-float/2addr v8, v7

    float-to-int v8, v8

    int-to-float v9, v10

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    neg-int v9, v8

    div-int/lit8 v9, v9, 0x2

    neg-int v10, v7

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v0, v9, v10, v8, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-float v7, v3, v1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    mul-float/2addr v6, v7

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    neg-float v7, v3

    div-float/2addr v7, v1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v7, v5

    invoke-virtual {v6, v5}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setScale(F)V

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setAlpha(F)V

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_8
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-boolean v6, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    if-nez v6, :cond_23

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v6, v2, v6

    if-lez v6, :cond_23

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v6, :cond_23

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    sub-float v5, v2, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v4, v6, v4

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    :goto_7
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_20

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v7, :cond_20

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v7}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_20

    const/4 v7, 0x1

    :goto_8
    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getAdditionX()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getAdditionY()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v6, v3}, Landroid/graphics/Canvas;->translate(FF)V

    sub-float v8, v1, v5

    sub-float v9, v1, v5

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v8, v1, v6, v3}, Lorg/telegram/ui/Components/PhotoCropView;->setBitmapParams(FFF)V

    :cond_9
    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v9

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v8

    if-eqz v7, :cond_a

    iget-boolean v10, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    if-eqz v10, :cond_a

    int-to-float v10, v9

    int-to-float v11, v8

    div-float/2addr v10, v11

    iget-object v11, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v11}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    iget-object v12, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v12}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x3c23d70a    # 0.01f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v9

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v8

    :cond_a
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v10

    int-to-float v10, v10

    int-to-float v11, v9

    div-float v11, v10, v11

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v10

    int-to-float v10, v10

    int-to-float v12, v8

    div-float/2addr v10, v12

    cmpl-float v12, v11, v10

    if-lez v12, :cond_21

    :goto_9
    int-to-float v9, v9

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-eqz v7, :cond_b

    iget-boolean v10, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    if-eqz v10, :cond_b

    iget-boolean v10, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    if-eqz v10, :cond_b

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_c

    :cond_b
    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10, v4}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v11, v9

    div-int/lit8 v11, v11, 0x2

    neg-int v12, v8

    div-int/lit8 v12, v12, 0x2

    invoke-virtual {v10, v11, v12, v9, v8}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    iget-object v10, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v10, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_c
    if-eqz v7, :cond_e

    iget-boolean v10, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    if-nez v10, :cond_d

    iget-boolean v10, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    const/4 v10, 0x0

    iput v10, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    :cond_d
    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p1, v9, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    mul-float/2addr v9, v4

    invoke-virtual {v8, v9}, Landroid/view/TextureView;->setAlpha(F)V

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v8, p1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v8, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    if-eqz v8, :cond_e

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    sub-long v10, v8, v10

    iput-wide v8, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlphaLastTime:J

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    long-to-float v9, v10

    const/high16 v10, 0x43960000    # 300.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_e

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f
    if-nez v7, :cond_11

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_11

    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-float v7, v3, v1

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v7, v5

    invoke-virtual {v6, v5}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setScale(F)V

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setAlpha(F)V

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    if-ne v0, v4, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v6

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v7

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v6

    div-float v5, v4, v5

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v4

    int-to-float v4, v4

    int-to-float v8, v7

    div-float/2addr v4, v8

    cmpl-float v8, v5, v4

    if-lez v8, :cond_22

    :goto_a
    int-to-float v5, v6

    mul-float/2addr v5, v4

    float-to-int v5, v5

    int-to-float v6, v7

    mul-float/2addr v4, v6

    float-to-int v4, v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    neg-int v6, v5

    div-int/lit8 v6, v6, 0x2

    neg-int v7, v4

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v0, v6, v7, v5, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    div-float v0, v3, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v2, v4

    mul-float/2addr v0, v2

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    neg-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    neg-float v2, v3

    div-float v1, v2, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setScale(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_13
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_15

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoCropView;->setAnimationProgress(F)V

    :cond_14
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v1}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_16

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_16

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    :cond_16
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_17

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_17

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    :cond_18
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    if-eqz v1, :cond_1a

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    :cond_19
    :goto_b
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    :cond_1a
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-nez v4, :cond_5

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    goto/16 :goto_1

    :cond_1b
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto :goto_b

    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    goto/16 :goto_2

    :cond_1d
    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gez v4, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v4, v0

    goto/16 :goto_3

    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_1f
    move v7, v8

    goto/16 :goto_6

    :cond_20
    const/4 v7, 0x0

    goto/16 :goto_8

    :cond_21
    move v10, v11

    goto/16 :goto_9

    :cond_22
    move v4, v5

    goto/16 :goto_a

    :cond_23
    move v6, v2

    goto/16 :goto_7

    :cond_24
    move v6, v2

    goto/16 :goto_5

    :cond_25
    move-object v4, v0

    goto/16 :goto_3
.end method

.method private onPhotoClosed(Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    iput-boolean v5, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v3, v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->requestVideoPreview(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->destroy()V

    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    new-instance v3, Lorg/telegram/ui/PhotoViewer$60;

    invoke-direct {v3, p0}, Lorg/telegram/ui/PhotoViewer$60;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->willHidePhotoViewer()V

    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-eqz p1, :cond_5

    iget-object v0, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_5
    return-void
.end method

.method private onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v2, 0x1

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-boolean v0, v1, v2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setPadding(IIII)V

    if-eqz p6, :cond_8

    iget-object v0, p6, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    :goto_2
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTag(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const v1, 0x7f020213

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v1, 0x7f02029b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterView;->setVisibility(I)V

    :cond_6
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v1, v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_9
    if-eqz p1, :cond_12

    if-nez p3, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    :cond_a
    :goto_4
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    :cond_b
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v0, :cond_c

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_29

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    if-nez v0, :cond_29

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const/4 v2, 0x0

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCount(JIIZ)V

    :cond_c
    :goto_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    :cond_f
    :goto_7
    return-void

    :cond_10
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-nez v0, :cond_a

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v0, :cond_a

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    if-eqz v0, :cond_a

    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_4

    :cond_12
    if-eqz p2, :cond_16

    iget v0, p6, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->dialogId:I

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    iget v1, p6, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_14

    :cond_13
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :goto_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer;->currentUserAvatarLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_5

    :cond_14
    const/16 v0, 0x8

    goto :goto_8

    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_9

    :cond_16
    if-eqz p3, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p5

    add-int/lit8 p5, v0, -0x1

    :cond_17
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_18

    const/4 v2, 0x0

    :goto_b
    aget-object v2, v3, v2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_18
    const/4 v2, 0x1

    goto :goto_b

    :cond_19
    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_5

    :cond_1a
    if-eqz p4, :cond_b

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v0, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_21

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_c
    const/4 v0, 0x1

    :goto_d
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentEncryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v1

    const/16 v2, 0x2e

    if-lt v1, v2, :cond_1e

    :cond_1c
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v2, v2, Lorg/telegram/ui/ChatActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->allowCaption()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_1d
    const/4 v0, 0x1

    :goto_f
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "AddCaption"

    const v2, 0x7f080059

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "empty"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const v1, -0x4d000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_11
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onCreate()V

    :cond_1e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1f
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->updateSelectedCount()V

    goto/16 :goto_5

    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    :cond_21
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v1, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_22
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    instance-of v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v2, :cond_23

    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    iget v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    if-nez v0, :cond_23

    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto/16 :goto_d

    :cond_23
    const/16 v0, 0x8

    goto :goto_12

    :cond_24
    const/4 v0, 0x0

    goto/16 :goto_d

    :cond_25
    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_26
    const/4 v0, 0x0

    goto/16 :goto_f

    :cond_27
    const/16 v0, 0x8

    goto/16 :goto_10

    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_11

    :cond_29
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v0, :cond_c

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    const/4 v2, 0x0

    const/16 v3, 0x50

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto/16 :goto_6

    :cond_2a
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_f

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v1, :cond_f

    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_7
.end method

.method private onSharePressed()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_6

    const-string/jumbo v0, "video/mp4"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "ShareFile"

    const v3, 0x7f0804f2

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

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

    :cond_4
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_4
    invoke-static {v2, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_7
    const-string/jumbo v0, "image/jpeg"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

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

    invoke-virtual {p0, v0}, Lorg/telegram/ui/PhotoViewer;->showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_9
    move-object v1, v2

    goto/16 :goto_1
.end method

.method private onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v0, :cond_0

    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/PhotoFilterView;->onTouch(Landroid/view/MotionEvent;)V

    move v0, v3

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v0, v3, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->isKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-direct {p0, v3}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    :cond_5
    move v0, v3

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    if-eqz v0, :cond_7

    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->checkMinMax(Z)V

    move v0, v3

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_d

    :cond_8
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    :cond_9
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_a
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

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

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_b
    :goto_1
    move v0, v4

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_23

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v0, v3, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    :cond_e
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    if-nez v0, :cond_f

    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

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

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    div-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-gtz v5, :cond_11

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_12

    :cond_11
    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    :cond_12
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    instance-of v5, v5, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;

    if-nez v5, :cond_15

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v5, :cond_15

    iget-boolean v5, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    if-eqz v5, :cond_15

    iget-boolean v5, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-nez v5, :cond_15

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_15

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_15

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    cmpl-float v0, v2, v0

    if-lez v0, :cond_15

    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v0, :cond_14

    invoke-direct {p0, v4, v3}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    :cond_13
    :goto_2
    move v0, v3

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0, v4, v3}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->toggleCheckImageView(Z)V

    goto :goto_2

    :cond_15
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    :cond_16
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    if-nez v0, :cond_22

    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_22

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v0, v5

    iget-boolean v5, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-nez v5, :cond_18

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v5, :cond_18

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_17

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

    if-ltz v5, :cond_18

    :cond_17
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v5, v5, v10

    if-eqz v5, :cond_b

    :cond_18
    iget-boolean v5, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-nez v5, :cond_19

    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    move v0, v1

    move v2, v1

    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v3}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1a

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v3, :cond_1b

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1a
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1c

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v3, :cond_1b

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v3

    if-nez v3, :cond_1c

    :cond_1b
    div-float/2addr v2, v11

    :cond_1c
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_20

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpl-float v3, v3, v1

    if-nez v3, :cond_20

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v3, :cond_20

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v3, v0

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1f

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    :goto_3
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_1d

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_1e

    :cond_1d
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    goto/16 :goto_1

    :cond_1f
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v3, v0

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_39

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    goto :goto_3

    :cond_20
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v1, v1, v3

    if-ltz v1, :cond_21

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_39

    :cond_21
    div-float v1, v0, v11

    goto :goto_3

    :cond_22
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    goto/16 :goto_1

    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_b

    :cond_24
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v0, v3, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoCropView;->startAnimationRunnable()V

    :cond_25
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    if-eqz v0, :cond_2c

    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpg-float v0, v0, v10

    if-gez v0, :cond_26

    invoke-direct {p0, v10}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    invoke-direct {p0, v10, v1, v1, v3}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    :goto_4
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    goto/16 :goto_1

    :cond_26
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v0, v0, v11

    if-lez v0, :cond_2b

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float v2, v11, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    sub-float/2addr v2, v5

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    div-float v5, v11, v5

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    invoke-direct {p0, v11}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_29

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    :cond_27
    :goto_5
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2a

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    :cond_28
    :goto_6
    invoke-direct {p0, v11, v0, v1, v3}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_4

    :cond_29
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_27

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_5

    :cond_2a
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_28

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_6

    :cond_2b
    invoke-direct {p0, v3}, Lorg/telegram/ui/PhotoViewer;->checkMinMax(Z)V

    goto :goto_4

    :cond_2c
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    if-eqz v0, :cond_2f

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->dragY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v2, v5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2d

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    :goto_7
    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    goto/16 :goto_1

    :cond_2d
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0, v3, v3}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    invoke-direct {p0, v3}, Lorg/telegram/ui/PhotoViewer;->toggleCheckImageView(Z)V

    :cond_2e
    invoke-direct {p0, v10, v1, v1, v4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto :goto_7

    :cond_2f
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v5}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    iput-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    iput-boolean v3, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_30

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v5, v5, v10

    if-nez v5, :cond_30

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v1, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    :cond_30
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-nez v5, :cond_34

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    sub-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_31

    const v5, 0x44228000    # 650.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, v1, v5

    if-gez v5, :cond_32

    :cond_31
    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->goToNext()V

    move v0, v3

    goto/16 :goto_0

    :cond_32
    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_33

    const v5, 0x44228000    # 650.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_34

    :cond_33
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->goToPrev()V

    move v0, v3

    goto/16 :goto_0

    :cond_34
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_36

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    :cond_35
    :goto_8
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_37

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    :goto_9
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v2, v0, v1, v4}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    goto/16 :goto_1

    :cond_36
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_35

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_8

    :cond_37
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_38

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_9

    :cond_38
    move v1, v2

    goto :goto_9

    :cond_39
    move v1, v0

    goto/16 :goto_3
.end method

.method private openCaptionEnter()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->openKeyboard()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "GifCaption"

    const v2, 0x7f08025f

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "VideoCaption"

    const v2, 0x7f08056a

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "PhotoCaption"

    const v2, 0x7f08043f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private preparePlayer(Ljava/io/File;ZZ)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v4, 0x4

    const/16 v9, 0x8

    const-wide/16 v10, 0x3c

    const/4 v3, -0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    :cond_1
    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    if-nez v0, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/16 v2, 0x11

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v8, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/TextureView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v8}, Landroid/view/TextureView;->setOpaque(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    const/16 v2, 0x11

    invoke-static {v3, v3, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iput-boolean v8, p0, Lorg/telegram/ui/PhotoViewer;->textureUploaded:Z

    iput-boolean v8, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeStarted:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->videoCrossfadeAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_4

    new-instance v0, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v0}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$38;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$38;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    const-wide/16 v0, 0x0

    :cond_3
    :goto_1
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

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

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "other"

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    iput-boolean p3, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    goto/16 :goto_0

    :cond_8
    const-wide/16 v0, 0x0

    goto/16 :goto_1
.end method

.method private processOpenVideo(Ljava/lang/String;)Z
    .locals 18

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/VideoTimelineView;->setVideoPath(Ljava/lang/String;)V

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/ui/PhotoViewer;->originalSize:J

    new-instance v5, Lcom/coremedia/iso/IsoFile;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Lcom/coremedia/iso/IsoFile;-><init>(Ljava/lang/String;)V

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

    if-nez v3, :cond_19

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

    iput v5, v0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    const-wide/16 v12, 0x8

    mul-long/2addr v12, v6

    long-to-float v5, v12

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F
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

    iput v4, v0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/PhotoViewer;->originalBitrate:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    const v5, 0xdbba0

    if-le v4, v5, :cond_3

    const v4, 0xdbba0

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

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

    iget-wide v6, v0, Lorg/telegram/ui/PhotoViewer;->audioFramesSize:J

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/ui/PhotoViewer;->audioFramesSize:J

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

    if-eqz v5, :cond_a

    const/16 v2, 0x5a

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    :cond_7
    :goto_6
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getWidth()D

    move-result-wide v6

    double-to-int v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getHeight()D

    move-result-wide v4

    double-to-int v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

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

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    const/16 v4, 0x500

    if-gt v2, v4, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    const/16 v4, 0x500

    if-le v2, v4, :cond_c

    :cond_8
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    :goto_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->updateWidthHeightBitrateForCompression()V

    if-nez v3, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    if-ne v2, v3, :cond_13

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    sget-object v5, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_180:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v2, 0xb4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_b
    :try_start_3
    sget-object v5, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_270:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v2, v5}, Lcom/googlecode/mp4parser/util/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x10e

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    goto/16 :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    const/16 v4, 0x350

    if-gt v2, v4, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    const/16 v4, 0x350

    if-le v2, v4, :cond_e

    :cond_d
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    const/16 v4, 0x280

    if-gt v2, v4, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    const/16 v4, 0x280

    if-le v2, v4, :cond_10

    :cond_f
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    const/16 v4, 0x1e0

    if-gt v2, v4, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    const/16 v4, 0x1e0

    if-le v2, v4, :cond_12

    :cond_11
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    goto/16 :goto_7

    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    const/4 v4, 0x1

    if-le v2, v4, :cond_15

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_14

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_14

    :try_start_4
    const-string/jumbo v2, "video/avc"

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_14
    :goto_9
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->updateVideoInfo()V

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->updateMuteButton()V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_15
    const/16 v2, 0x8

    goto :goto_8

    :cond_16
    :try_start_5
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "OMX.google.h264.encoder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string/jumbo v4, "OMX.ST.VFM.H264Enc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string/jumbo v4, "OMX.Exynos.avc.enc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string/jumbo v4, "OMX.MARVELL.VIDEO.HW.CODA7542ENCODER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string/jumbo v4, "OMX.MARVELL.VIDEO.H264ENCODER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string/jumbo v4, "OMX.k3.video.encoder.avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string/jumbo v4, "OMX.TI.DUCATI1.VIDEO.H264E"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_9

    :catch_2
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_18
    :try_start_6
    const-string/jumbo v3, "video/avc"

    invoke-static {v2, v3}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_9

    :cond_19
    move v3, v2

    goto/16 :goto_1
.end method

.method private redraw(I)V
    .locals 4

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    new-instance v0, Lorg/telegram/ui/PhotoViewer$61;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/PhotoViewer$61;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private releasePlayer()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTextureView:Landroid/view/TextureView;

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->isPlaying:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const v1, 0x7f02018f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private requestVideoPreview(I)V
    .locals 12

    const-wide/32 v10, 0x4c4b40

    const-wide/16 v8, -0x1

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ge v0, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    if-ne p1, v1, :cond_b

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_5

    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    invoke-direct {p0, v0, v2, v2}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    goto :goto_0

    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_6

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

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

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

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    new-instance v3, Lorg/telegram/messenger/VideoEditedInfo;

    invoke-direct {v3}, Lorg/telegram/messenger/VideoEditedInfo;-><init>()V

    iput-object v3, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    iput-wide v6, v0, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    iput-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_7

    const-wide/16 v6, 0x0

    :cond_7
    cmp-long v0, v4, v8

    if-nez v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v3

    float-to-long v4, v0

    :cond_8
    sub-long/2addr v4, v6

    cmp-long v0, v4, v10

    if-lez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    add-long v4, v6, v10

    iput-wide v4, v0, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    iput v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v3, v1}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    if-nez v0, :cond_a

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    :cond_a
    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_b
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    invoke-direct {p0, v0, v2, v2}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_0
.end method

.method private setCurrentCaption(Ljava/lang/CharSequence;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v0, v1, v2, v4}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    new-instance v0, Lorg/telegram/ui/PhotoViewer$50;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$50;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "AddCaption"

    const v2, 0x7f080059

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "empty"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const v1, -0x4d000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private setImageIndex(IZ)V
    .locals 13

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v1, 0x1

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v1, 0x2

    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lorg/telegram/ui/PhotoViewer;->getFileName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V

    iget v10, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-ltz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    move v8, v1

    :goto_1
    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v9

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isInvoice()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->description:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AttachGif"

    const v2, 0x7f0800b3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_3
    move v2, v8

    move v3, v9

    :cond_6
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v0, :cond_38

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v0, v1, v4, v5}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v0, :cond_39

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_8
    :goto_6
    if-nez v2, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->draggingDown:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setVisibility(I)V

    :cond_9
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartDistance:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartScale:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterX:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchCenterY:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartX:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->pinchStartY:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->moveStartX:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->moveStartY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->zooming:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->moving:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->invalidCoords:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canDragDown:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->changingPage:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->switchImageAfterAnimation:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_3a

    if-nez v3, :cond_3a

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    # getter for: Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10400(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v0

    if-eqz v0, :cond_3a

    :cond_a
    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    :cond_b
    const/4 v0, -0x1

    if-ne v10, v0, :cond_3b

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->setImages()V

    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    move v8, v1

    goto/16 :goto_1

    :cond_d
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasPhotoStickers()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v0, v4

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessageObject;->canDeleteMessage(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :goto_a
    if-eqz v9, :cond_10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :goto_b
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-string/jumbo v0, "formatDateAtTime"

    const v4, 0x7f0805c5

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterYear:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/messenger/LocaleController;->formatterDay:Lorg/telegram/messenger/time/FastDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_14

    if-eqz v9, :cond_14

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "%s (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    int-to-long v6, v5

    invoke-static {v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_d
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_e
    const/4 v0, 0x4

    goto/16 :goto_9

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_a

    :cond_10
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_b

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_12
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_13
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :cond_14
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    :cond_15
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v0, v2

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_16

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    if-nez v0, :cond_16

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    if-le v0, v1, :cond_16

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    move v1, v0

    :goto_e
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_43

    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_43

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_42

    const/4 v1, 0x0

    move v0, v2

    move v4, v1

    :goto_f
    if-nez v0, :cond_19

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_10
    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Of"

    const v2, 0x7f0803c9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_17
    :goto_11
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v0, :cond_21

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    const/16 v1, 0xe10

    if-ge v0, v1, :cond_21

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_3

    :cond_18
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    move v1, v0

    goto/16 :goto_e

    :cond_19
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_10

    :cond_1a
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1b

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    if-nez v0, :cond_1b

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1b

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_41

    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_41

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_40

    const/4 v1, 0x0

    move v0, v2

    move v4, v1

    :goto_13
    if-nez v0, :cond_1d

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_14
    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    :cond_1b
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Of"

    const v2, 0x7f0803c9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    :cond_1c
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    move v1, v0

    goto/16 :goto_12

    :cond_1d
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_14

    :cond_1e
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AttachVideo"

    const v2, 0x7f0800b8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AttachPhoto"

    const v2, 0x7f0800b6

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    :cond_20
    if-eqz v1, :cond_17

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_11

    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_23

    :cond_22
    const/4 v0, 0x0

    :goto_15
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto/16 :goto_3

    :cond_23
    const/16 v0, 0x8

    goto :goto_15

    :cond_24
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto/16 :goto_3

    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v1

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :goto_16
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-ltz p1, :cond_26

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_28

    :cond_26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_16

    :cond_28
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v1, :cond_3f

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_3f

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v0, v4, :cond_3f

    iget-wide v0, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3f

    const/4 v0, 0x1

    :goto_17
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "Of"

    const v4, 0x7f0803c9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->allowShare:Z

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2a

    :cond_29
    const/4 v1, 0x0

    :goto_18
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2b

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    :goto_19
    move v2, v0

    goto/16 :goto_4

    :cond_2a
    const/16 v1, 0x8

    goto :goto_18

    :cond_2b
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_19

    :cond_2c
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-ltz p1, :cond_2d

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2e

    :cond_2d
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    goto/16 :goto_0

    :cond_2e
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v4, 0x0

    instance-of v0, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_31

    move-object v0, v1

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->bucketId:I

    if-nez v3, :cond_30

    iget-wide v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->dateTaken:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_30

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_30

    const/4 v3, 0x1

    :goto_1a
    iget-object v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    move-object v12, v4

    move v4, v3

    move v3, v0

    move-object v0, v12

    :goto_1b
    if-eqz v4, :cond_37

    if-eqz v3, :cond_36

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v5, 0x42c00000    # 96.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v5, 0x42c00000    # 96.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/telegram/ui/PhotoViewer;->processOpenVideo(Ljava/lang/String;)Z

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "AttachVideo"

    const v6, 0x7f0800b8

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1c
    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v4, :cond_2f

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v5, v6}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->isPhotoChecked(I)Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/Components/CheckBox;->setChecked(ZZ)V

    :cond_2f
    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->setCurrentCaption(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1}, Lorg/telegram/ui/PhotoViewer;->updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_30
    const/4 v3, 0x0

    goto :goto_1a

    :cond_31
    instance-of v0, v1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_34

    move-object v0, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_32

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    move v0, v3

    :goto_1d
    move v3, v0

    move-object v0, v4

    move v4, v5

    goto/16 :goto_1b

    :cond_32
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v6, :cond_33

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    invoke-static {v0, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    move v0, v3

    goto :goto_1d

    :cond_33
    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v6, :cond_3e

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1d

    :cond_34
    instance-of v0, v1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v0, :cond_3d

    move-object v0, v1

    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v4, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_35

    iget-object v4, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    :goto_1e
    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    move v4, v5

    goto/16 :goto_1b

    :cond_35
    iget-object v4, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    iput-object v4, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    goto :goto_1e

    :cond_36
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "AttachPhoto"

    const v6, 0x7f0800b6

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    :cond_37
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "Of"

    const v6, 0x7f0803c9

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1c

    :cond_38
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->showAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    goto/16 :goto_5

    :cond_39
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlaceObject:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->hideAfterAnimation:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    goto/16 :goto_6

    :cond_3a
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_3b
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-le v10, v0, :cond_3c

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_0

    :cond_3c
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    if-ge v10, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_0

    :cond_3d
    move-object v0, v4

    move v4, v5

    goto/16 :goto_1b

    :cond_3e
    move v0, v3

    goto/16 :goto_1d

    :cond_3f
    move v0, v2

    goto/16 :goto_17

    :cond_40
    move v0, v2

    move v4, v1

    goto/16 :goto_13

    :cond_41
    move v4, v1

    goto/16 :goto_13

    :cond_42
    move v0, v2

    move v4, v1

    goto/16 :goto_f

    :cond_43
    move v4, v1

    goto/16 :goto_f
.end method

.method private setImages()V
    .locals 2

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V

    :cond_0
    return-void
.end method

.method private setIndexToImage(Lorg/telegram/messenger/ImageReceiver;I)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    if-ltz p2, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocals:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v2

    float-to-int v8, v1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    if-ne p1, v2, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    :cond_0
    if-nez v1, :cond_26

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v5, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    instance-of v7, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v7, :cond_2

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v7, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-nez v7, :cond_25

    iget-object v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    :goto_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v1, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    :goto_2
    move v7, v3

    move-object v10, v4

    move-object v2, v1

    move-object v1, v6

    move-object v3, v0

    :goto_3
    if-eqz v1, :cond_e

    const/4 v2, 0x0

    const-string/jumbo v3, "d"

    if-eqz v5, :cond_c

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    invoke-direct {v4, v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_4
    if-nez v5, :cond_d

    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "%d_%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v10

    invoke-static {v0, v6, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    :goto_6
    return-void

    :cond_1
    iget v1, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    goto :goto_1

    :cond_2
    instance-of v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v7, :cond_9

    check-cast v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v9, "video"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_4

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object v4, v2

    move-object v2, v0

    move v0, v3

    move-object v3, v6

    :goto_7
    move v7, v0

    move-object v10, v2

    move-object v2, v4

    move-object v12, v3

    move-object v3, v1

    move-object v1, v12

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb_url:Ljava/lang/String;

    move v0, v3

    move-object v3, v6

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    goto :goto_7

    :cond_5
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v9, "gif"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v7, :cond_6

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    const-string/jumbo v1, "d"

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    goto :goto_7

    :cond_6
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v7, :cond_7

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v1, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v2, v3

    move-object v3, v6

    goto :goto_7

    :cond_7
    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    if-eqz v7, :cond_24

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v2, "gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "d"

    :goto_8
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content_url:Ljava/lang/String;

    move v0, v3

    move-object v3, v6

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    goto :goto_7

    :cond_8
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%d_%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v9

    invoke-static {v1, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    instance-of v7, v0, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v7, :cond_23

    check-cast v0, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imagePath:Ljava/lang/String;

    :goto_9
    const-string/jumbo v1, "d"

    move v7, v3

    move-object v10, v4

    move-object v3, v1

    move-object v1, v6

    goto/16 :goto_3

    :cond_a
    iget-object v1, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v1, :cond_b

    iget-object v6, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    goto :goto_9

    :cond_b
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$SearchImage;->imageUrl:Ljava/lang/String;

    iget v3, v0, Lorg/telegram/messenger/MediaController$SearchImage;->size:I

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_e
    if-eqz v10, :cond_10

    const/4 v2, 0x0

    if-eqz v5, :cond_f

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    invoke-direct {v4, v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_a
    const/4 v5, 0x0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%d_%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v6, v9

    const/4 v9, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v9

    invoke-static {v0, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, v10

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_6

    :cond_f
    const/4 v4, 0x0

    goto :goto_a

    :cond_10
    if-eqz v5, :cond_11

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v0, 0x0

    invoke-direct {v4, v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_b
    const/4 v5, 0x0

    move-object v1, p1

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    goto/16 :goto_6

    :cond_11
    const/4 v4, 0x0

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    :cond_13
    const/4 v0, 0x1

    new-array v7, v0, [I

    invoke-direct {p0, p2, v7}, Lorg/telegram/ui/PhotoViewer;->getFileLocation(I[I)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    if-eqz v1, :cond_1f

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    :cond_14
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    if-eqz v0, :cond_15

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V

    :cond_15
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    if-eqz v1, :cond_17

    iget-object v1, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    if-ne p1, v2, :cond_22

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object v4, v1

    :goto_c
    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v4, :cond_16

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    invoke-direct {v0, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v4, v0

    :goto_d
    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v6, "b"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_6

    :cond_16
    const/4 v4, 0x0

    goto :goto_d

    :cond_17
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02021e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_18
    if-eqz v0, :cond_19

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_19

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    goto/16 :goto_6

    :cond_19
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_21

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    if-ne p1, v3, :cond_21

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentThumb:Landroid/graphics/Bitmap;

    move-object v4, v2

    :goto_e
    const/4 v2, 0x0

    aget v2, v7, v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v7, v2

    :cond_1a
    if-eqz v0, :cond_1b

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    const/16 v2, 0x64

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    move-object v5, v0

    :goto_f
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v4, :cond_1c

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v6, 0x0

    invoke-direct {v0, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v4, v0

    :goto_10
    if-eqz v5, :cond_1d

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_11
    const-string/jumbo v6, "b"

    const/4 v0, 0x0

    aget v7, v7, v0

    const/4 v8, 0x0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-eqz v0, :cond_1e

    const/4 v9, 0x1

    :goto_12
    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_6

    :cond_1b
    const/4 v0, 0x0

    move-object v5, v0

    goto :goto_f

    :cond_1c
    const/4 v4, 0x0

    goto :goto_10

    :cond_1d
    const/4 v5, 0x0

    goto :goto_11

    :cond_1e
    const/4 v9, 0x0

    goto :goto_12

    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V

    const/4 v0, 0x0

    aget v0, v7, v0

    if-nez v0, :cond_20

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6

    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02021e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    :cond_21
    move-object v4, v2

    goto :goto_e

    :cond_22
    move-object v4, v1

    goto/16 :goto_c

    :cond_23
    move v7, v3

    move-object v10, v4

    move-object v3, v1

    move-object v1, v6

    goto/16 :goto_3

    :cond_24
    move v0, v3

    move-object v3, v6

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    goto/16 :goto_7

    :cond_25
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_2

    :cond_26
    move-object v5, v1

    goto/16 :goto_0
.end method

.method private setScaleToFill()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

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

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    return-void
.end method

.method private showQualityView(Z)V
    .locals 11

    const/high16 v10, 0x42400000    # 48.0f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->previousCompression:I

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43180000    # 152.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43180000    # 152.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/high16 v5, 0x42d00000    # 104.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$63;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PhotoViewer$63;-><init>(Lorg/telegram/ui/PhotoViewer;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseViewAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43260000    # 166.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    aput v9, v4, v7

    const/high16 v5, 0x43260000    # 166.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "translationY"

    new-array v4, v8, [F

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/high16 v5, 0x42ec0000    # 118.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private switchToEditMode(I)V
    .locals 13

    const/high16 v12, 0x42c00000    # 96.0f

    const/4 v3, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v0, v0, v7

    # getter for: Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10400(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_10

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v0, v11, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->switchToOrFromEditMode()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v6

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v5

    div-float v4, v0, v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v6

    div-float v2, v0, v1

    invoke-direct {p0, v7}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, v5

    div-float v1, v0, v1

    invoke-direct {p0, v7}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v8, v6

    div-float/2addr v0, v8

    cmpl-float v8, v4, v2

    if-lez v8, :cond_3

    move v4, v2

    :cond_3
    cmpl-float v2, v1, v0

    if-lez v2, :cond_8

    :goto_1
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-ne v1, v10, :cond_a

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->applying:Z

    if-nez v1, :cond_a

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v2, v1

    int-to-float v1, v5

    div-float v1, v2, v1

    int-to-float v5, v6

    div-float/2addr v2, v5

    cmpl-float v5, v1, v2

    if-lez v5, :cond_9

    :goto_2
    div-float v2, v1, v4

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    :goto_3
    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->animateToX:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v0, v10, :cond_b

    const/high16 v0, 0x42680000    # 58.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    :cond_4
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_5

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    iput-boolean v10, p0, Lorg/telegram/ui/PhotoViewer;->zoomAnimation:Z

    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v0, v10, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v4, "translationY"

    new-array v5, v10, [F

    const/high16 v6, 0x42400000    # 48.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v5, v7

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const-string/jumbo v2, "animationValue"

    new-array v4, v11, [F

    fill-array-data v4, :array_0

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v10

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const-string/jumbo v4, "alpha"

    new-array v5, v10, [F

    aput v3, v5, v7

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v11

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_7
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$40;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PhotoViewer$40;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_1

    :cond_9
    move v1, v2

    goto/16 :goto_2

    :cond_a
    div-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animateToScale:F

    goto/16 :goto_3

    :cond_b
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v0, v11, :cond_c

    const/high16 v0, 0x42780000    # 62.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    goto/16 :goto_4

    :cond_c
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animateToY:F

    goto/16 :goto_4

    :cond_d
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-ne v0, v11, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v11, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v2

    const-string/jumbo v3, "translationY"

    new-array v4, v10, [F

    const/high16 v5, 0x42fc0000    # 126.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    const-string/jumbo v2, "animationValue"

    new-array v3, v11, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_5

    :cond_e
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->shutdown()V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imageMoveAnimation:Landroid/animation/AnimatorSet;

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/animation/Animator;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    const-string/jumbo v3, "translationY"

    new-array v4, v10, [F

    const/high16 v5, 0x42fc0000    # 126.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v0

    const-string/jumbo v3, "translationX"

    new-array v4, v10, [F

    const/high16 v5, 0x42700000    # 60.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v10

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    const-string/jumbo v4, "translationY"

    new-array v5, v10, [F

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    neg-int v6, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v0, v8, :cond_f

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_6
    sub-int v0, v6, v0

    int-to-float v0, v0

    aput v0, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v2, v11

    const/4 v0, 0x3

    const-string/jumbo v3, "animationValue"

    new-array v4, v11, [F

    fill-array-data v4, :array_2

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_5

    :cond_f
    move v0, v7

    goto :goto_6

    :cond_10
    if-ne p1, v10, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    if-nez v0, :cond_11

    new-instance v0, Lorg/telegram/ui/Components/PhotoCropView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    const/16 v2, 0x33

    const/high16 v6, 0x42400000    # 48.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$41;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$41;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView;->setDelegate(Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;)V

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoCropView;->onAppear()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string/jumbo v1, "Crop"

    const v2, 0x7f080198

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const v1, -0xae420d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v2, "translationY"

    new-array v4, v11, [F

    aput v3, v4, v7

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v10

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "translationY"

    new-array v4, v11, [F

    aput v3, v4, v7

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v10

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "translationY"

    new-array v4, v11, [F

    aput v3, v4, v7

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v4, v10

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v1, :cond_13

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v2, "alpha"

    new-array v3, v11, [F

    fill-array-data v3, :array_3

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$42;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PhotoViewer$42;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_14
    if-ne p1, v11, :cond_18

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-nez v0, :cond_15

    new-instance v0, Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v4

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/ui/Components/PhotoFilterView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    const/4 v2, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getDoneTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PhotoViewer$43;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$43;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getCancelTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PhotoViewer$44;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$44;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x42fc0000    # 126.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_15
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v2, "translationY"

    new-array v4, v11, [F

    aput v3, v4, v7

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v10

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "translationY"

    new-array v4, v11, [F

    aput v3, v4, v7

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v10

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v1, :cond_16

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "translationY"

    new-array v4, v11, [F

    aput v3, v4, v7

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v4, v10

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v1, :cond_17

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v2, "alpha"

    new-array v3, v11, [F

    fill-array-data v3, :array_4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$45;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PhotoViewer$45;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_18
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    if-nez v0, :cond_19

    new-instance v0, Lorg/telegram/ui/Components/PhotoPaintView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v4

    invoke-direct {v0, v1, v2, v4}, Lorg/telegram/ui/Components/PhotoPaintView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    const/4 v2, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->getDoneTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PhotoViewer$46;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$46;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->getCancelTextView()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/PhotoViewer$47;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$47;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->getColorPicker()Lorg/telegram/ui/Components/Paint/Views/ColorPicker;

    move-result-object v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/ColorPicker;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->getToolsView()Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x42fc0000    # 126.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoPaintView;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    neg-int v2, v0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v0, v4, :cond_1c

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_7
    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTranslationY(F)V

    :cond_19
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v2, "translationY"

    new-array v4, v11, [F

    aput v3, v4, v7

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v10

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "translationY"

    new-array v4, v11, [F

    aput v3, v4, v7

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v10

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "translationY"

    new-array v4, v11, [F

    aput v3, v4, v7

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    aput v3, v4, v10

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v1, :cond_1b

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v2, "alpha"

    new-array v3, v11, [F

    fill-array-data v3, :array_5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$48;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PhotoViewer$48;-><init>(Lorg/telegram/ui/PhotoViewer;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->changeModeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_1c
    move v0, v7

    goto/16 :goto_7

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

    :array_2
    .array-data 4
        0x0
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
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private toggleActionBar(ZZ)V
    .locals 9

    const/16 v4, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz p2, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_4

    move v0, v1

    :goto_0
    aput v0, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v8, [F

    if-eqz p1, :cond_5

    move v0, v1

    :goto_1
    aput v0, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    new-array v5, v8, [F

    if-eqz p1, :cond_6

    :goto_2
    aput v1, v5, v7

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$49;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$49;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentActionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz p1, :cond_9

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setAlpha(F)V

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_8
    if-nez p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setVisibility(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    move v1, v2

    goto :goto_6
.end method

.method private toggleCheckImageView(Z)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    aput v0, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needCaptionLayout:Z

    if-eqz v0, :cond_0

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    const-string/jumbo v6, "alpha"

    new-array v7, v9, [F

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    aput v0, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    if-eqz p1, :cond_4

    :goto_2
    aput v1, v6, v8

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private updateCaptionTextForCurrentPhoto(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v0, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/telegram/messenger/MediaController$SearchImage;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v0, p1, Lorg/telegram/messenger/MediaController$SearchImage;->caption:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setFieldText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateMinMax(F)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-lez v0, :cond_1

    neg-int v2, v0

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    :goto_0
    if-lez v1, :cond_2

    neg-int v0, v1

    int-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    int-to-float v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    :goto_1
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitX()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitY()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitWidth()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/PhotoCropView;->getLimitHeight()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    :cond_0
    return-void

    :cond_1
    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    goto :goto_0

    :cond_2
    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    iput v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    goto :goto_1
.end method

.method private updateSelectedCount()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v1}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getSelectedCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    goto :goto_0
.end method

.method private updateVideoInfo()V
    .locals 10

    const-wide/16 v6, 0x3e8

    const/16 v3, 0x10e

    const/16 v2, 0x5a

    const/4 v9, 0x2

    const/4 v8, 0x1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v1, 0x7f020291

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_b

    :cond_2
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v0, v3, :cond_9

    :cond_3
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    :goto_2
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v1, v2, :cond_4

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v1, v3, :cond_a

    :cond_4
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    :goto_3
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->originalSize:J

    long-to-float v2, v2

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    long-to-float v3, v4

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    :goto_5
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_11

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

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

    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    div-long/2addr v2, v6

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    long-to-int v1, v2

    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

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

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

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

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    if-ne v0, v8, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v1, 0x7f020292

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    if-ne v0, v9, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v1, 0x7f020293

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v1, 0x7f020294

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v1, 0x7f020290

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    goto/16 :goto_2

    :cond_a
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    goto/16 :goto_3

    :cond_b
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v0, v2, :cond_c

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v0, v3, :cond_e

    :cond_c
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    :goto_8
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-eq v1, v2, :cond_d

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->rotationValue:I

    if-ne v1, v3, :cond_f

    :cond_d
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    :goto_9
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->audioFramesSize:J

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    add-long/2addr v2, v4

    long-to-float v2, v2

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->estimatedDuration:J

    long-to-float v3, v4

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    const v4, 0x8000

    div-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->estimatedSize:I

    goto/16 :goto_4

    :cond_e
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    goto :goto_8

    :cond_f
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    goto :goto_9

    :cond_10
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->startTime:J

    goto/16 :goto_5

    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v2

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->endTime:J

    goto/16 :goto_6

    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    goto/16 :goto_7
.end method

.method private updateVideoPlayerTime()V
    .locals 12

    const-wide/16 v8, 0x3e8

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v10, 0x3c

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_1

    const-string/jumbo v0, "00:00 / 00:00"

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_3

    cmp-long v4, v2, v6

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->inPreview:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    long-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoTimelineView;->getRightProgress()F

    move-result v1

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v4

    sub-float/2addr v1, v4

    mul-float/2addr v0, v1

    float-to-long v0, v0

    long-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoTimelineView;->getLeftProgress()F

    move-result v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-long v2, v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    move-wide v2, v0

    :cond_2
    div-long/2addr v2, v8

    div-long/2addr v0, v8

    const-string/jumbo v4, "%02d:%02d / %02d:%02d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    div-long v8, v2, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    rem-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x2

    div-long v6, v0, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x3

    rem-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "00:00 / 00:00"

    goto/16 :goto_0
.end method

.method private updateWidthHeightBitrateForCompression()V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    :cond_0
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->compressionsCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->selectedCompression:I

    packed-switch v0, :pswitch_data_0

    const v0, 0x186a00

    const/high16 v1, 0x44a00000    # 1280.0f

    :goto_0
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    :goto_1
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->originalWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->resultWidth:I

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->resultHeight:I

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->originalBitrate:I

    int-to-float v2, v2

    div-float v1, v2, v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->bitrate:I

    div-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->videoFramesSize:J

    :cond_1
    return-void

    :pswitch_0
    const/high16 v1, 0x43d80000    # 432.0f

    const v0, 0x61a80

    goto :goto_0

    :pswitch_1
    const/high16 v1, 0x44200000    # 640.0f

    const v0, 0xdbba0

    goto :goto_0

    :pswitch_2
    const/high16 v1, 0x44540000    # 848.0f

    const v0, 0x10c8e0

    goto :goto_0

    :cond_2
    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->originalHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public closePhoto(ZZ)V
    .locals 11

    if-nez p2, :cond_3

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoPaintView:Lorg/telegram/ui/Components/PhotoPaintView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$55;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$55;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, p0, v1, v2}, Lorg/telegram/ui/Components/PhotoPaintView;->maybeShowDismissalAlert(Lorg/telegram/ui/PhotoViewer;Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v0, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    goto :goto_0

    :cond_4
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoFilterView;->shutdown()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    :cond_6
    :goto_2
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->checkAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->hideActionMode()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_0

    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

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

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_9
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-virtual {v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequestsForGuid(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v3

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v1

    const/4 v0, 0x0

    if-eqz v3, :cond_a

    iget-object v6, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v6, :cond_a

    iget-object v0, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v0

    :cond_a
    if-eqz v0, :cond_1c

    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    if-eqz v3, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v0, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    iget-object v0, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v2, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    div-float v2, v1, v2

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v1, Landroid/graphics/Point;->y:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-lt v1, v7, :cond_12

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_6
    add-int/2addr v1, v6

    int-to-float v1, v1

    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    cmpl-float v6, v2, v1

    if-lez v6, :cond_13

    :goto_7
    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v2, v2

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float/2addr v2, v6

    mul-float/2addr v2, v1

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, v1

    sget-object v6, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    sub-float v2, v6, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v2, v6

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v7, v2, Landroid/graphics/Point;->y:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v2, v8, :cond_14

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_8
    add-int/2addr v2, v7

    int-to-float v2, v2

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    add-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    add-float/2addr v2, v6

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float/2addr v5, v1

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    mul-float/2addr v1, v5

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    if-eqz v3, :cond_17

    iget-object v1, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/4 v1, 0x2

    new-array v2, v1, [I

    iget-object v1, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x1

    aget v7, v2, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v1, v8, :cond_15

    const/4 v1, 0x0

    :goto_9
    sub-int v1, v7, v1

    iget v7, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    sub-int/2addr v1, v7

    iget v7, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    add-int/2addr v1, v7

    if-gez v1, :cond_b

    const/4 v1, 0x0

    :cond_b
    iget v7, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    const/4 v8, 0x1

    aget v2, v2, v8

    iget-object v8, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v2, v9, :cond_16

    const/4 v2, 0x0

    :goto_a
    sub-int v2, v8, v2

    sub-int v2, v7, v2

    iget v7, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    add-int/2addr v2, v7

    if-gez v2, :cond_c

    const/4 v2, 0x0

    :cond_c
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x6

    const/4 v8, 0x0

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x7

    const/4 v8, 0x0

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    iget v8, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x1

    iget v8, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x2

    iget v8, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    int-to-float v8, v8

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget v10, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    aput v8, v6, v7

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x3

    iget v8, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v8, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v9, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v0, v9

    add-float/2addr v0, v8

    aput v0, v6, v7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v6, 0x1

    aget-object v0, v0, v6

    const/4 v6, 0x4

    int-to-float v5, v5

    iget v7, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v5, v7

    aput v5, v0, v6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v0, v0, v5

    const/4 v5, 0x5

    int-to-float v1, v1

    iget v6, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v1, v6

    aput v1, v0, v5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x6

    int-to-float v2, v2

    iget v5, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v2, v5

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x7

    iget v2, v3, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const-string/jumbo v5, "animationProgress"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_b
    new-instance v0, Lorg/telegram/ui/PhotoViewer$56;

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/PhotoViewer$56;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xc8

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/PhotoViewer$57;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$57;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_d
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :goto_c
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setSecondParentView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    instance-of v0, v0, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    invoke-interface {v0}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->cancelButtonPressed()Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_f
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentEditMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoCropView:Lorg/telegram/ui/Components/PhotoCropView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PhotoCropView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()I

    move-result v0

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()I

    move-result v0

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v2

    goto/16 :goto_5

    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_13
    move v1, v2

    goto/16 :goto_7

    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_15
    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_9

    :cond_16
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_a

    :cond_17
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_18

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_d
    add-int/2addr v0, v1

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x1

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const-string/jumbo v6, "alpha"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x2

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const-string/jumbo v6, "translationY"

    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    iget v9, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_19

    int-to-float v0, v0

    :goto_e
    aput v0, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x3

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_b

    :cond_18
    const/4 v0, 0x0

    goto :goto_d

    :cond_19
    neg-int v0, v0

    int-to-float v0, v0

    goto :goto_e

    :cond_1a
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const-string/jumbo v5, "scaleX"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const v8, 0x3f666666    # 0.9f

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const-string/jumbo v5, "scaleY"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const v8, 0x3f666666    # 0.9f

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const-string/jumbo v5, "alpha"

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    new-instance v1, Lorg/telegram/ui/PhotoViewer$58;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/PhotoViewer$58;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$59;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$59;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1b

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1b
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_c

    :cond_1c
    move v0, v1

    goto/16 :goto_3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public destroyPhotoViewer()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->onDestroy()V

    :cond_3
    sput-object v2, Lorg/telegram/ui/PhotoViewer;->Instance:Lorg/telegram/ui/PhotoViewer;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 12

    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    if-ne p1, v0, :cond_8

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    const/4 v1, 0x3

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v1, v1, v2

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileNames:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Float;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v3, v3, v2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setProgress(FZ)V

    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_8
    sget v0, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    if-ne p1, v0, :cond_10

    const/4 v0, 0x4

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    if-ne v2, v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v2, -0x1

    const/4 v0, 0x5

    aget-object v0, p2, v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move v3, v1

    move v4, v2

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_b

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    if-nez v2, :cond_b

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    if-nez v2, :cond_9

    move v2, v4

    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v4, v2

    goto :goto_4

    :cond_9
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v5, 0x280

    invoke-static {v2, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    if-eqz v7, :cond_b

    const/4 v2, -0x1

    if-ne v4, v2, :cond_a

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    move v5, v2

    :goto_6
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_a

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v9, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v8, v9, :cond_c

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v8, v10

    if-nez v2, :cond_c

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    iget-object v5, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    iget v5, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move v2, v4

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    :goto_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    const/4 v0, -0x1

    if-eq v4, v0, :cond_f

    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    :goto_8
    if-eqz v6, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->avatarsDialogId:I

    const/4 v2, 0x0

    const/16 v3, 0x50

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->loadDialogPhotos(IIIJZI)V

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->avatarsArr:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoEmpty;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrLocationsSizes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto :goto_8

    :cond_10
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    if-ne p1, v0, :cond_16

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_11

    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    :cond_11
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_13

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    :cond_12
    :goto_9
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isFirstLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_1

    :cond_13
    iget-wide v2, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto :goto_9

    :cond_14
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Of"

    const v2, 0x7f0803c9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_15
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "Of"

    const v2, 0x7f0803c9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_16
    sget v0, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    if-ne p1, v0, :cond_31

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v0, 0x3

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_17

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :cond_17
    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    move v3, v0

    :goto_a
    const/4 v0, 0x2

    aget-object v0, p2, v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    const/4 v1, 0x5

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v2, v3

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-nez v3, :cond_18

    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1a

    :cond_18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    goto/16 :goto_1

    :cond_19
    const/4 v0, 0x1

    move v3, v0

    goto :goto_a

    :cond_1a
    const/4 v5, -0x1

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v6, v5

    move v5, v4

    move v4, v2

    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_1e

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v7, v7, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v7, v7, v3

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v7, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v7, :cond_1d

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    if-ne v2, v7, :cond_1b

    move v6, v5

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    :cond_1c
    :goto_c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_b

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    if-ne v2, v7, :cond_1c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v6, v2, v5

    goto :goto_c

    :cond_1e
    if-nez v5, :cond_20

    if-nez v3, :cond_1f

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_20

    :cond_1f
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    :cond_20
    const/4 v0, -0x1

    if-eq v6, v0, :cond_23

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_d
    const/4 v1, 0x2

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIdsTemp:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_21
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->needSearchImageInArr:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v6, v0, :cond_22

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    :cond_22
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_1

    :cond_23
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v4, 0x0

    :goto_e
    if-nez v3, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_24

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_24

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_24

    const/4 v4, 0x0

    :cond_24
    :goto_f
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->loadingMoreImages:Z

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v0, :cond_29

    if-nez v3, :cond_28

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_10
    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_1

    :cond_25
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    goto :goto_e

    :cond_26
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v4, 0x0

    :goto_11
    if-nez v3, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->endReached:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_24

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-eqz v0, :cond_24

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    iget-wide v6, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_24

    const/4 v4, 0x0

    goto :goto_f

    :cond_27
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArrTemp:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    goto :goto_11

    :cond_28
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_10

    :cond_29
    if-nez v3, :cond_2a

    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    :goto_12
    const/4 v2, 0x0

    const/16 v3, 0x50

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->classGuid:I

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMedia(JIIIIZI)V

    goto/16 :goto_1

    :cond_2a
    iget-wide v0, p0, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    goto :goto_12

    :cond_2b
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    add-int/lit8 v1, v1, 0x1

    iget-boolean v4, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->imagesByIds:[Ljava/util/HashMap;

    aget-object v4, v4, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    move v0, v1

    move v1, v0

    goto :goto_13

    :cond_2d
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_14

    :cond_2e
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->opennedFromMedia:Z

    if-eqz v0, :cond_2f

    if-nez v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto/16 :goto_1

    :cond_2f
    if-eqz v1, :cond_30

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/ui/PhotoViewer;->currentIndex:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/PhotoViewer;->setImageIndex(IZ)V

    goto/16 :goto_1

    :cond_30
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->imagesArr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCount:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/PhotoViewer;->totalImagesCountMerge:I

    goto/16 :goto_1

    :cond_31
    sget v0, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    if-ne p1, v0, :cond_32

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto/16 :goto_1

    :cond_32
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    if-ne p1, v0, :cond_36

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    if-eqz v1, :cond_33

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->loadInitialVideo:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPlayingVideoFile:Ljava/io/File;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_1

    :cond_33
    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    if-eqz v1, :cond_35

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->releasePlayer()V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->tryStartRequestPreviewOnFinish:Z

    goto/16 :goto_1

    :cond_34
    const/4 v0, 0x0

    goto :goto_15

    :cond_35
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_36
    sget v0, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPreviewMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->requestingPreview:Z

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lorg/telegram/ui/PhotoViewer;->preparePlayer(Ljava/io/File;ZZ)V

    goto/16 :goto_1
.end method

.method public getAnimationValue()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    return v0
.end method

.method public isMuteVideo()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    return v0
.end method

.method public isShowingImage(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentPathObject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingImage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingImage(Lorg/telegram/tgnet/TLRPC$FileLocation;)Z
    .locals 4

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentFileLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v0, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->canZoom:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v1, v1, v9

    if-nez v1, :cond_1

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/PhotoViewer;->animationStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-nez v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    sub-float/2addr v1, v3

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    div-float v3, v8, v3

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    div-float v4, v8, v4

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-direct {p0, v8}, Lorg/telegram/ui/PhotoViewer;->updateMinMax(F)V

    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_4

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    :cond_2
    :goto_1
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_5

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    :cond_3
    :goto_2
    invoke-direct {p0, v8, v0, v1, v2}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/PhotoViewer;->doubleTap:Z

    move v0, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    goto :goto_1

    :cond_5
    iget v3, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    goto :goto_2

    :cond_6
    invoke-direct {p0, v9, v3, v3, v2}, Lorg/telegram/ui/PhotoViewer;->animateTo(FFFZ)V

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

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer;->translationX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->translationY:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/PhotoViewer;->minX:F

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/PhotoViewer;->maxX:F

    float-to-int v6, v6

    iget v7, p0, Lorg/telegram/ui/PhotoViewer;->minY:F

    float-to-int v7, v7

    iget v8, p0, Lorg/telegram/ui/PhotoViewer;->maxY:F

    float-to-int v8, v8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->postInvalidate()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->lastTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->closeCaptionEnter(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/ui/PhotoViewer;->redraw(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

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

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->discardTap:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->canShowBottom:Z

    if-eqz v0, :cond_5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->aspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v3, v3, v2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v0, v0, v2

    # getter for: Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10400(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v0

    if-lez v0, :cond_3

    if-gt v0, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v6

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v6

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_3

    invoke-direct {p0, v1}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->isActionBarVisible:Z

    if-nez v0, :cond_4

    move v2, v1

    :cond_4
    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBox;->performClick()Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->type:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->currentBotInlineResult:Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v0, v0, v2

    # getter for: Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->backgroundState:I
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->access$10400(Lorg/telegram/ui/PhotoViewer$PhotoProgressView;)I

    move-result v0

    if-lez v0, :cond_0

    if-gt v0, v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewWidth()I

    move-result v4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v6

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v6

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer;->getContainerViewHeight()I

    move-result v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v6

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_0

    invoke-direct {p0, v1}, Lorg/telegram/ui/PhotoViewer;->onActionClick(Z)V

    invoke-direct {p0, v2, v1}, Lorg/telegram/ui/PhotoViewer;->checkProgress(IZ)V

    goto/16 :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public openPhoto(Ljava/util/ArrayList;IJJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;IJJ",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    move-object/from16 v6, p7

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;JJLorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z
    .locals 12

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p6

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0
.end method

.method public openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$FileLocation;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;I",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Lorg/telegram/ui/ChatActivity;",
            "JJ)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    if-nez v4, :cond_1

    if-nez p6, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/PhotoViewer;->checkAnimation()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    :cond_1
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_2
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;->getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v10

    if-nez v10, :cond_3

    if-nez p4, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->lastInsets:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/telegram/ui/PhotoViewer;->attachedToWindow:Z

    if-eqz v5, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x63

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v6, -0x7ffefef8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x110

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/telegram/ui/PhotoViewer;->doneButtonPressed:Z

    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v6, "Of"

    const v7, 0x7f0803c9

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-static {v6, v7, v8}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->mediaCountDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->mediaDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogPhotosLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->emojiDidLoaded:I

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v6}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/PhotoViewer;->placeProvider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    move-wide/from16 v0, p10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->mergeDialogId:J

    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/PhotoViewer;->currentDialogId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/ui/PhotoViewer;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_5
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/telegram/ui/PhotoViewer;->isVisible:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lorg/telegram/ui/PhotoViewer;->toggleActionBar(ZZ)V

    if-eqz v10, :cond_11

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/telegram/ui/PhotoViewer;->disableShowCheck:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/ui/PhotoViewer;->animationInProgress:I

    if-eqz p1, :cond_6

    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/telegram/ui/PhotoViewer;->currentAnimation:Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :cond_6
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getOrientation()I

    move-result v5

    iget-object v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getAnimatedOrientation()I

    move-result v4

    if-eqz v4, :cond_14

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/ClippingImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/ClippingImageView;->setRadius(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/ClippingImageView;->setOrientation(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v4, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/ClippingImageView;->setNeedRadius(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotX(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    int-to-float v5, v5

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    int-to-float v5, v5

    iget v7, v6, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ClippingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v4, v6, Landroid/graphics/Rect;->right:I

    iget v5, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    iget v5, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/ClippingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    div-float v5, v4, v5

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v4, Landroid/graphics/Point;->y:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v4, v9, :cond_c

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_5
    add-int/2addr v4, v8

    int-to-float v4, v4

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v8, v8

    div-float/2addr v4, v8

    cmpl-float v8, v5, v4

    if-lez v8, :cond_d

    :goto_6
    iget v5, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    sub-float v5, v9, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v5, v9

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v11, v5, Landroid/graphics/Point;->y:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v5, v12, :cond_e

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_7
    add-int/2addr v5, v11

    int-to-float v5, v5

    sub-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v5, v8

    iget v5, v6, Landroid/graphics/Rect;->left:I

    iget-object v11, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getImageX()I

    move-result v11

    sub-int/2addr v5, v11

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v5, v6, Landroid/graphics/Rect;->top:I

    iget-object v12, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v12}, Lorg/telegram/messenger/ImageReceiver;->getImageY()I

    move-result v12

    sub-int/2addr v5, v12

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/4 v5, 0x2

    new-array v13, v5, [I

    iget-object v5, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v5, v13}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v5, 0x1

    aget v14, v13, v5

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x15

    if-lt v5, v15, :cond_f

    const/4 v5, 0x0

    :goto_8
    sub-int v5, v14, v5

    iget v14, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget v15, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v15

    sub-int/2addr v5, v14

    iget v14, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    add-int/2addr v5, v14

    if-gez v5, :cond_7

    const/4 v5, 0x0

    :cond_7
    iget v14, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v14

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v7, v6

    const/4 v6, 0x1

    aget v6, v13, v6

    iget-object v13, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v13, v6

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x15

    if-lt v6, v14, :cond_10

    const/4 v6, 0x0

    :goto_9
    sub-int v6, v13, v6

    sub-int v6, v7, v6

    iget v7, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    add-int/2addr v6, v7

    if-gez v6, :cond_8

    const/4 v6, 0x0

    :cond_8
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v12, 0x0

    aget-object v7, v7, v12

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleX()F

    move-result v13

    aput v13, v7, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v12, 0x0

    aget-object v7, v7, v12

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v13

    aput v13, v7, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v12, 0x0

    aget-object v7, v7, v12

    const/4 v12, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationX()F

    move-result v13

    aput v13, v7, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v12, 0x0

    aget-object v7, v7, v12

    const/4 v12, 0x3

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/ClippingImageView;->getTranslationY()F

    move-result v13

    aput v13, v7, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v12, 0x0

    aget-object v7, v7, v12

    const/4 v12, 0x4

    int-to-float v11, v11

    iget v13, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v11, v13

    aput v11, v7, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v11, 0x0

    aget-object v7, v7, v11

    const/4 v11, 0x5

    int-to-float v5, v5

    iget v12, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v5, v12

    aput v5, v7, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v7, 0x0

    aget-object v5, v5, v7

    const/4 v7, 0x6

    int-to-float v6, v6

    iget v11, v10, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    mul-float/2addr v6, v11

    aput v6, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x7

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/ClippingImageView;->getRadius()I

    move-result v7

    int-to-float v7, v7

    aput v7, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aput v4, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    aput v9, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x3

    aput v8, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x4

    const/4 v6, 0x0

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x6

    const/4 v6, 0x0

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationProgress(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setAlpha(F)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const-string/jumbo v8, "animationProgress"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [I

    fill-array-data v9, :array_1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const-string/jumbo v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v5, Lorg/telegram/ui/PhotoViewer$51;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/PhotoViewer$51;-><init>(Lorg/telegram/ui/PhotoViewer;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/ui/PhotoViewer;->animationEndRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/PhotoViewer$52;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/telegram/ui/PhotoViewer$52;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/ui/PhotoViewer;->transitionAnimationStartTime:J

    new-instance v5, Lorg/telegram/ui/PhotoViewer$53;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Lorg/telegram/ui/PhotoViewer$53;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    new-instance v5, Lorg/telegram/ui/PhotoViewer$54;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v10}, Lorg/telegram/ui/PhotoViewer$54;-><init>(Lorg/telegram/ui/PhotoViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    # setter for: Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;
    invoke-static {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->access$13102(Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :goto_a
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_d
    move v4, v5

    goto/16 :goto_6

    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_f
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_8

    :cond_10
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto/16 :goto_9

    :cond_11
    if-eqz p4, :cond_12

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_12

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v6, -0x7ffeff00

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v6, 0x110

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setAlpha(F)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lorg/telegram/ui/PhotoViewer;->onPhotoShow(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    goto/16 :goto_a

    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x0

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_b

    :catch_1
    move-exception v5

    goto/16 :goto_1

    :cond_14
    move v4, v5

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
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public openPhoto(Lorg/telegram/tgnet/TLRPC$FileLocation;Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;)Z
    .locals 12

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "HOSHYAR"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "HOSHYAR"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, v1

    move-object v6, p2

    move-object v7, v1

    move-wide v10, v8

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0
.end method

.method public openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;II",
            "Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;",
            "Lorg/telegram/ui/ChatActivity;",
            ")Z"
        }
    .end annotation

    iput p3, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v0, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    iget v0, p0, Lorg/telegram/ui/PhotoViewer;->sendPhotoType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string/jumbo v0, "Set"

    const v2, 0x7f0804e4

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/ui/PhotoViewer;->openPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/util/ArrayList;Ljava/util/ArrayList;ILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;JJ)Z

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v0, "Send"

    const v2, 0x7f0804c8

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAnimationValue(F)V
    .locals 1

    iput p1, p0, Lorg/telegram/ui/PhotoViewer;->animationValue:F

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->invalidate()V

    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 14

    const/16 v13, 0x30

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x1

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    const v4, 0x7f0c007e

    invoke-direct {v1, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    sget-object v1, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    sput-object v1, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    sget-object v1, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0200a1

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v12

    sget-object v1, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f020092

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v11

    sget-object v1, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0201a7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v2

    sget-object v1, Lorg/telegram/ui/PhotoViewer;->progressDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020229

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v2

    :cond_1
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->scroller:Landroid/widget/Scroller;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PhotoViewer$2;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->backgroundDrawable:Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    new-instance v1, Lorg/telegram/ui/Components/ClippingImageView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/ClippingImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->animationValues:[[F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ClippingImageView;->setAnimationValues([[F)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    const/16 v4, 0x28

    const/high16 v5, 0x42200000    # 40.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v12}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFocusable(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/16 v4, 0x33

    invoke-static {v0, v0, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setFitsSystemWindows(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$3;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->setSystemUiVisibility(I)V

    :cond_2
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x63

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v2, -0x7ffefef8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v1, v4, :cond_7

    move v1, v11

    :goto_2
    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x40ffffff    # 7.9999995f

    invoke-virtual {v1, v2, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f0200e8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "Of"

    const v4, 0x7f0803c9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v2, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v4, -0x40000000    # -2.0f

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$4;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    const/16 v2, 0xd

    const v4, 0x7f020141

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->masksItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v2, 0x7f0200f1

    invoke-virtual {v1, v12, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xb

    const-string/jumbo v4, "OpenInExternalApp"

    const v5, 0x7f0803d6

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x2

    const-string/jumbo v4, "ShowAllMedia"

    const v5, 0x7f080503

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v2, 0xa

    const-string/jumbo v4, "ShareFile"

    const v5, 0x7f0804f2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string/jumbo v2, "SaveToGallery"

    const v4, 0x7f0804a6

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->menuItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x6

    const-string/jumbo v4, "Delete"

    const v5, 0x7f0801bb

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(ILjava/lang/String;)Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x53

    invoke-static {v0, v13, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/PhotoViewer$5;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/PhotoViewer$5;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v11, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x53

    const/high16 v6, 0x42400000    # 48.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewOld:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$6;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/PhotoViewer$7;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/PhotoViewer$7;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v1, v2, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLinkTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v11, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    const/high16 v1, -0x40000000    # -2.0f

    const/16 v2, 0x53

    const/high16 v6, 0x42400000    # 48.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionTextViewNew:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$8;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$8;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {v2, p0, v4, v5}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v2, v1, v12

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v1, v1, v12

    invoke-virtual {v1, v12, v12}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {v2, p0, v4, v5}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v2, v1, v11

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    aget-object v1, v1, v11

    invoke-virtual {v1, v12, v12}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v2, 0x2

    new-instance v4, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v5}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-direct {v4, p0, v5, v6}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/view/View;)V

    aput-object v4, v1, v2

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->photoProgressViews:[Lorg/telegram/ui/PhotoViewer$PhotoProgressView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v12, v12}, Lorg/telegram/ui/PhotoViewer$PhotoProgressView;->setBackgroundState(IZ)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const v2, 0x7f020248

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const v2, 0x40ffffff    # 7.9999995f

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    const/16 v4, 0x32

    const/16 v5, 0x35

    invoke-static {v4, v0, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->shareButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$9;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$9;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v11, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->nameTextView:Landroid/widget/TextView;

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x42700000    # 60.0f

    move v4, v0

    move v10, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v11, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->dateTextView:Landroid/widget/TextView;

    const/high16 v5, -0x40000000    # -2.0f

    const/16 v6, 0x33

    const/high16 v7, 0x41800000    # 16.0f

    const/high16 v8, 0x41c80000    # 25.0f

    const/high16 v9, 0x42480000    # 50.0f

    move v4, v0

    move v10, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    new-instance v1, Lorg/telegram/ui/Components/SeekBar;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    const v2, 0x66ffffff

    invoke-virtual {v1, v2, v0, v0}, Lorg/telegram/ui/Components/SeekBar;->setColors(III)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerSeekbar:Lorg/telegram/ui/Components/SeekBar;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$10;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    new-instance v1, Lorg/telegram/ui/PhotoViewer$11;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/PhotoViewer$11;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->bottomLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    const/16 v4, 0x33

    invoke-static {v0, v0, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    const/16 v4, 0x33

    invoke-static {v13, v13, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayButton:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$12;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v1, v11, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerControlFrameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayerTime:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/high16 v5, -0x40800000    # -1.0f

    const/16 v6, 0x35

    const/high16 v9, 0x41000000    # 8.0f

    move v7, v3

    move v8, v3

    move v10, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    const/high16 v1, 0x42500000    # 52.0f

    const/16 v2, 0x53

    const/high16 v6, 0x42c00000    # 96.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/VideoTimelineView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/VideoTimelineView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$13;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoTimelineView;->setDelegate(Lorg/telegram/ui/Components/VideoTimelineView$VideoTimelineViewDelegate;)V

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineViewContainer:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const/high16 v1, 0x42300000    # 44.0f

    const/16 v2, 0x33

    const/high16 v4, 0x41000000    # 8.0f

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const v2, 0x7f0200a1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setBackgroundResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RadialProgressView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->progressView:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v4, 0x36

    const/high16 v5, 0x42580000    # 54.0f

    const/16 v6, 0x11

    const/high16 v10, 0x42700000    # 60.0f

    move v7, v3

    move v8, v3

    move v9, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v1, v12, v12}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    const-string/jumbo v2, "Done"

    const v4, 0x7f0801dc

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v4, 0x53

    invoke-static {v0, v13, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$14;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$14;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->qualityPicker:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$15;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$15;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setTranslationY(F)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Lorg/telegram/ui/PhotoViewer$QualityChooseView;->setBackgroundColor(I)V

    iget-object v7, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v8, p0, Lorg/telegram/ui/PhotoViewer;->qualityChooseView:Lorg/telegram/ui/PhotoViewer$QualityChooseView;

    const/high16 v1, 0x428c0000    # 70.0f

    const/16 v2, 0x53

    const/high16 v6, 0x42c00000    # 96.0f

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    new-instance v1, Lorg/telegram/ui/PhotoViewer$16;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/PhotoViewer$16;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v4, 0x53

    invoke-static {v0, v13, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$17;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$17;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$18;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$18;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->pickerView:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/4 v4, -0x2

    const/16 v5, 0x31

    invoke-static {v4, v13, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const v4, 0x7f020215

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const v4, 0x40ffffff    # 7.9999995f

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    const/16 v4, 0x38

    invoke-static {v4, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->tuneItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/PhotoViewer$19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PhotoViewer$19;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const v4, 0x7f02020d

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const v4, 0x40ffffff    # 7.9999995f

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    const/16 v4, 0x38

    invoke-static {v4, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->paintItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/PhotoViewer$20;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PhotoViewer$20;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const v4, 0x7f02020a

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const v4, 0x40ffffff    # 7.9999995f

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    const/16 v4, 0x38

    invoke-static {v4, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->cropItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/PhotoViewer$21;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PhotoViewer$21;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const v4, 0x40ffffff    # 7.9999995f

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    const/16 v4, 0x38

    invoke-static {v4, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/PhotoViewer$22;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PhotoViewer$22;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const v4, 0x40ffffff    # 7.9999995f

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/16 v4, 0x38

    invoke-static {v4, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/PhotoViewer$23;

    invoke-direct {v4, p0}, Lorg/telegram/ui/PhotoViewer$23;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    invoke-direct {v2, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v4, 0x40ffffff    # 7.9999995f

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const/16 v4, 0x38

    invoke-static {v4, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$24;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$24;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    invoke-virtual {v1, v12, v12}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->updateSelectedCount(IZ)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    const/16 v4, 0x53

    invoke-static {v0, v13, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->cancelButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$25;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v1, v1, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->doneButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$26;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$26;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v11, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const v2, -0xc2c2c3

    invoke-static {v2, v12}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v1, v2, v12, v4, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const-string/jumbo v2, "Reset"

    const v4, 0x7f08019b

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->editorDoneLayout:Lorg/telegram/ui/Components/PickerBottomLayoutViewer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/16 v5, 0x31

    invoke-static {v4, v0, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/telegram/ui/Components/PickerBottomLayoutViewer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->resetButton:Landroid/widget/TextView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$27;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$27;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    new-instance v1, Lorg/telegram/ui/PhotoViewer$28;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$28;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v11}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v11}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->leftImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v11}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->rightImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    new-instance v2, Lorg/telegram/ui/PhotoViewer$29;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    invoke-virtual {v4}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f020246

    invoke-direct {v2, p0, v4, v5}, Lorg/telegram/ui/PhotoViewer$29;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;I)V

    iput-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/CheckBox;->setDrawBackground(Z)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/CheckBox;->setSize(I)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/CheckBox;->setCheckOffset(I)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const v4, -0xc33511

    invoke-virtual {v2, v4, v0}, Lorg/telegram/ui/Components/CheckBox;->setColor(II)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v13, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    const/16 v4, 0x2d

    const/high16 v5, 0x42340000    # 45.0f

    const/16 v6, 0x35

    const/4 v7, 0x3

    if-eq v1, v7, :cond_4

    if-ne v1, v11, :cond_8

    :cond_4
    const/high16 v8, 0x42680000    # 58.0f

    :goto_3
    const/high16 v9, 0x41200000    # 10.0f

    move v7, v3

    move v10, v3

    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v13, v1}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->checkImageView:Lorg/telegram/ui/Components/CheckBox;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$30;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$30;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lorg/telegram/ui/PhotoViewer$31;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-direct {v1, p0, v2, v3, v4}, Lorg/telegram/ui/PhotoViewer$31;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    new-instance v2, Lorg/telegram/ui/PhotoViewer$32;

    invoke-direct {v2, p0}, Lorg/telegram/ui/PhotoViewer$32;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;->setDelegate(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$PhotoViewerCaptionEnterViewDelegate;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->captionEditText:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    const/4 v3, -0x2

    const/16 v4, 0x53

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/PhotoViewer$33;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/PhotoViewer$33;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lorg/telegram/ui/PhotoViewer$34;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lorg/telegram/ui/PhotoViewer$34;-><init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v1, v11}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->mentionLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x7f000000

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setBackgroundColor(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->containerView:Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x6e

    const/16 v4, 0x53

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer;->actvityContext:Landroid/content/Context;

    const-wide/16 v4, 0x0

    new-instance v6, Lorg/telegram/ui/PhotoViewer$35;

    invoke-direct {v6, p0}, Lorg/telegram/ui/PhotoViewer$35;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    move v3, v11

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;-><init>(Landroid/content/Context;ZJLorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;)V

    iput-object v1, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionsAdapter:Lorg/telegram/ui/Adapters/MentionsAdapter;

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowNewMentions(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$36;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$36;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$37;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$37;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_1

    :cond_7
    move v1, v12

    goto/16 :goto_2

    :cond_8
    const/high16 v8, 0x42880000    # 68.0f

    goto/16 :goto_3
.end method

.method public setParentAlert(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-void
.end method

.method public setParentChatActivity(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer;->parentChatActivity:Lorg/telegram/ui/ChatActivity;

    return-void
.end method

.method public showAlertDialog(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->parentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->visibleDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    new-instance v1, Lorg/telegram/ui/PhotoViewer$39;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PhotoViewer$39;-><init>(Lorg/telegram/ui/PhotoViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
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

.method public updateMuteButton()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setMute(Z)V

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer;->muteVideo:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AttachGif"

    const v2, 0x7f0800b3

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v1, 0x7f02029a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    const v1, 0x46ea6000    # 30000.0f

    iget v2, p0, Lorg/telegram/ui/PhotoViewer;->videoDuration:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoTimelineView;->setMaxProgressDiff(F)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "AttachVideo"

    const v2, 0x7f0800b8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer;->currentSubtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->muteItem:Landroid/widget/ImageView;

    const v1, 0x7f02029b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->compressItem:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer;->videoTimelineView:Lorg/telegram/ui/Components/VideoTimelineView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoTimelineView;->setMaxProgressDiff(F)V

    goto :goto_0
.end method
