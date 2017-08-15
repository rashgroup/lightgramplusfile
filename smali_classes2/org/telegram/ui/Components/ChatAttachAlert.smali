.class public Lorg/telegram/ui/Components/ChatAttachAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ChatAttachAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;,
        Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

.field private animateCameraValues:[I

.field private attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private attachView:Landroid/view/ViewGroup;

.field private baseFragment:Lorg/telegram/ui/ChatActivity;

.field private cameraAnimationInProgress:Z

.field private cameraFile:Ljava/io/File;

.field private cameraIcon:Landroid/widget/FrameLayout;

.field private cameraInitied:Z

.field private cameraOpenProgress:F

.field private cameraOpened:Z

.field private cameraPanel:Landroid/widget/FrameLayout;

.field private cameraPhoto:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cameraView:Lorg/telegram/messenger/camera/CameraView;

.field private cameraViewLocation:[I

.field private cameraViewOffsetX:I

.field private cameraViewOffsetY:I

.field private ciclePaint:Landroid/graphics/Paint;

.field private currentHintAnimation:Landroid/animation/AnimatorSet;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

.field private deviceHasGoodCamera:Z

.field private dragging:Z

.field private flashAnimationInProgress:Z

.field private flashModeButton:[Landroid/widget/ImageView;

.field private hideHintRunnable:Ljava/lang/Runnable;

.field private hintShowed:Z

.field private hintTextView:Landroid/widget/TextView;

.field private ignoreLayout:Z

.field private innerAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastY:F

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private lineView:Landroid/view/View;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private maybeStartDraging:Z

.field private mediaCaptured:Z

.field private paused:Z

.field private photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

.field private pressed:Z

.field private progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private recordTime:Landroid/widget/TextView;

.field private requestingPermissions:Z

.field private revealAnimationInProgress:Z

.field private revealRadius:F

.field private revealX:I

.field private revealY:I

.field private scrollOffsetY:I

.field private sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private shutterButton:Lorg/telegram/ui/Components/ShutterButton;

.field private switchCameraButton:Landroid/widget/ImageView;

.field private takingPhoto:Z

.field private useRevealAnimation:Z

.field private videoRecordRunnable:Ljava/lang/Runnable;

.field private videoRecordTime:I

.field private viewPosition:[I

.field private views:[Landroid/view/View;

.field private viewsCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/RecyclerListView$Holder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;)V
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    const/16 v0, 0x14

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;

    new-array v0, v11, [Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    new-array v0, v11, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    new-array v0, v11, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewPosition:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iput-boolean v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->loading:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "dialogBackground"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    invoke-direct {p0, v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->setUseRevealAnimation(Z)V

    invoke-virtual {p0, v8}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCamera(Z)V

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02024c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setWillNotDraw(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const-string/jumbo v1, "dialogScrollGlow"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    sget v1, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    sget v2, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    aput-object v1, v0, v12

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v8}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    const/16 v1, 0x9

    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    aput-object v2, v0, v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v1, "PermissionStorage"

    const v2, 0x7f080434

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v2, -0x1

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    const/16 v1, 0xa

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$8;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    const-string/jumbo v1, "dialogGrayLine"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/16 v5, 0x33

    invoke-direct {v2, v3, v10, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-array v1, v12, [Ljava/lang/CharSequence;

    const-string/jumbo v0, "ChatCamera"

    const v2, 0x7f08015a

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    const-string/jumbo v0, "ChatGallery"

    const v2, 0x7f08015c

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    const-string/jumbo v0, "ChatVideo"

    const v2, 0x7f080161

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    const/4 v0, 0x3

    const-string/jumbo v2, "AttachMusic"

    const v3, 0x7f0800b5

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string/jumbo v2, "ChatDocument"

    const v3, 0x7f08015b

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string/jumbo v2, "AttachContact"

    const v3, 0x7f0800b0

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string/jumbo v2, "ChatLocation"

    const v3, 0x7f08015f

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    move v0, v8

    :goto_1
    if-ge v0, v12, :cond_3

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    aget-object v3, v1, v0

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachButtonDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v0

    invoke-virtual {v2, v3, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    const/16 v5, 0x55

    const/16 v6, 0x5a

    const/16 v7, 0x33

    invoke-static {v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aput-object v2, v3, v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_1

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v3

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v8, v5, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$9;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v1, "NoPhotos"

    const v2, 0x7f080356

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const-string/jumbo v2, "chat_gifSaveHintBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "chat_gifSaveHintText"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "AttachBotsHelp"

    const v2, 0x7f0800af

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const v1, 0x7f020239

    invoke-virtual {v0, v1, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, 0x42000000    # 32.0f

    const/16 v2, 0x55

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v8

    :goto_2
    if-ge v0, v12, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/RecyclerListView$Holder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->loading:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_6

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v2, 0x66000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const-string/jumbo v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v10, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/4 v1, -0x2

    const/high16 v2, -0x40000000    # -2.0f

    const/16 v3, 0x31

    const/high16 v5, 0x41800000    # 16.0f

    move v6, v4

    move v7, v4

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$10;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/16 v3, 0x64

    const/16 v4, 0x53

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/ShutterButton;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/ShutterButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    const/16 v2, 0x54

    const/16 v3, 0x54

    const/16 v4, 0x11

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$11;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/ChatActivity;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ShutterButton;->setDelegate(Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x15

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v8

    :goto_4
    if-ge v0, v11, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$13;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$13;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto/16 :goto_3

    :cond_6
    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    return v0
.end method

.method static synthetic access$1002(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCameraViewPosition()V

    return-void
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    return v0
.end method

.method static synthetic access$2300()I
    .locals 1

    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$2400()I
    .locals 1

    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    return v0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3000()I
    .locals 1

    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$3100()I
    .locals 1

    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$3200()I
    .locals 1

    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintShowed:Z

    return v0
.end method

.method static synthetic access$3402(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintShowed:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHint()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->openCamera()V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ShutterButton;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaCaptured:Z

    return v0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->mediaCaptured:Z

    return p1
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z

    return v0
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z

    return p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/camera/CameraView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    return-object v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->requestingPermissions:Z

    return p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$5102(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordTime:I

    return v0
.end method

.method static synthetic access$5302(Lorg/telegram/ui/Components/ChatAttachAlert;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordTime:I

    return p1
.end method

.method static synthetic access$5308(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 2

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordTime:I

    return v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5402(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5502(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPhoto:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->resetRecordState()V

    return-void
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraInitied:Z

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashAnimationInProgress:Z

    return v0
.end method

.method static synthetic access$5802(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashAnimationInProgress:Z

    return p1
.end method

.method static synthetic access$5900(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    return-object v0
.end method

.method static synthetic access$6000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$6002(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6300(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6302(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$6500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$6700(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setUseRevealAnimation(Z)V

    return-void
.end method

.method static synthetic access$7000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7202(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$7300(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onRevealAnimationEnd(Z)V

    return-void
.end method

.method static synthetic access$7400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$7500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$7702(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z

    return p1
.end method

.method private applyCameraViewPosition()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x42a00000    # 80.0f

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v1, v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    sub-int v1, v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    sub-int v2, v0, v2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/camera/CameraView;->setClipLeft(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/camera/CameraView;->setClipTop(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v2, :cond_1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v1, :cond_2

    :cond_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3, v0}, Lorg/telegram/messenger/camera/CameraView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$17;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$17;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v2, :cond_3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v1, :cond_4

    :cond_3
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$18;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$18;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private checkCameraViewPosition()V
    .locals 8

    const/high16 v7, 0x42a00000    # 80.0f

    const/high16 v6, -0x3cea0000    # -150.0f

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v4, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aput v1, v0, v5

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCameraViewPosition()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getLeftInset()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getX()F

    move-result v0

    sget v2, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getLeftInset()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v2, v1

    int-to-float v2, v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v2, v1

    int-to-float v2, v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-lt v0, v2, :cond_3

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aput v1, v0, v5

    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v0, v0, v5

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v0, v2, :cond_6

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v2, v5

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    if-lt v0, v2, :cond_5

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aput v1, v0, v5

    :goto_3
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->applyCameraViewPosition()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v0, v1

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    goto :goto_2

    :cond_4
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v1, v0, v5

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    add-int/2addr v1, v2

    aput v1, v0, v5

    goto :goto_3

    :cond_6
    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method private getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_1

    sget-object v5, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method private hideHint()V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "alpha"

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$14;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$14;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private onRevealAnimationEnd(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCamera(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showHint()V

    :cond_1
    return-void
.end method

.method private openCamera()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aput v1, v0, v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    sub-int/2addr v2, v3

    aput v2, v0, v5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    sub-int/2addr v2, v3

    aput v2, v0, v6

    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "cameraOpenProgress"

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    aput v7, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v0, v3, v0

    const-string/jumbo v3, "alpha"

    new-array v4, v5, [F

    aput v7, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$15;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$15;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setSystemUiVisibility(I)V

    :cond_2
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private processTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pressed:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z

    if-nez v0, :cond_2

    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pressed:Z

    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maybeStartDraging:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lastY:F

    :cond_2
    :goto_0
    return v6

    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pressed:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v9, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lastY:F

    sub-float v1, v0, v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maybeStartDraging:Z

    if-eqz v2, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v1, v7}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->maybeStartDraging:Z

    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dragging:Z

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dragging:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraView;->getTranslationY()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lastY:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v7

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v6, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_6
    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->pressed:Z

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dragging:Z

    if-eqz v0, :cond_8

    iput-boolean v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->dragging:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    invoke-virtual {p0, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const-string/jumbo v3, "translationY"

    new-array v4, v6, [F

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v7

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v6

    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewPosition:[I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewPosition:[I

    aget v1, v1, v7

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewPosition:[I

    aget v2, v2, v6

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/camera/CameraView;->focusToPoint(II)V

    goto/16 :goto_0
.end method

.method private resetRecordState()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->switchCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->recordTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->videoRecordRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private setCameraFlashModeIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string/jumbo v1, "off"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "on"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "auto"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0200d5

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_1
    const v0, 0x7f0200d6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_2
    const v0, 0x7f0200d4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_1
        0x1ad6f -> :sswitch_0
        0x2dddaf -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setUseRevealAnimation(Z)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    :cond_1
    return-void
.end method

.method private showHint()V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "bothint"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintShowed:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v2, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$20;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$20;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startRevealAnimation(Z)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->getRevealView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v2, v0, [I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v0, v3, :cond_1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    :goto_0
    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    :cond_0
    :goto_1
    const/4 v0, 0x4

    new-array v2, v0, [[I

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput v5, v1, v3

    const/4 v3, 0x1

    const/high16 v5, 0x43980000    # 304.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    aput v5, v1, v3

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    aput v5, v1, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v1, v3

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    aput v5, v1, v3

    const/4 v3, 0x1

    const/high16 v5, 0x43980000    # 304.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    aput v5, v1, v3

    aput-object v1, v2, v0

    const/4 v1, 0x0

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    sub-int/2addr v0, v3

    sget v3, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    add-int v5, v0, v3

    const/4 v0, 0x0

    move v3, v1

    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    aget-object v6, v2, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v1, v6

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    aget-object v7, v2, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-int/2addr v6, v7

    mul-int/2addr v1, v6

    aget-object v6, v2, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int v6, v5, v6

    aget-object v7, v2, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int v7, v5, v7

    mul-int/2addr v6, v7

    add-int/2addr v1, v6

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getY()F

    move-result v0

    goto/16 :goto_0

    :cond_2
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    if-gt v0, v1, :cond_7

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string/jumbo v2, "revealRadius"

    const/4 v1, 0x2

    new-array v6, v1, [F

    const/4 v7, 0x0

    if-eqz p1, :cond_8

    const/4 v1, 0x0

    :goto_4
    aput v1, v6, v7

    const/4 v7, 0x1

    if-eqz p1, :cond_9

    int-to-float v1, v3

    :goto_5
    aput v1, v6, v7

    invoke-static {p0, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v6, "alpha"

    const/4 v1, 0x1

    new-array v7, v1, [I

    const/4 v8, 0x0

    if-eqz p1, :cond_a

    const/16 v1, 0x33

    :goto_6
    aput v1, v7, v8

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_d

    :try_start_0
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    if-eqz p1, :cond_b

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-eqz p1, :cond_c

    int-to-float v1, v3

    :goto_8
    invoke-static {v6, v0, v7, v2, v1}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    const-wide/16 v0, 0x140

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    :cond_4
    :goto_a
    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$21;

    invoke-direct {v0, p0, p1, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$21;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZLandroid/animation/AnimatorSet;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p1, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAllowedNotificationsDutingAnimation([I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_10

    const/16 v0, 0xb

    :goto_b
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_13

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v1, v3, :cond_11

    const/16 v1, 0x8

    if-ge v2, v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v1, v1, v2

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v1, v1, v2

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v1, v1, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_d
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$1;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    sub-int/2addr v6, v1

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    sub-int/2addr v7, v1

    mul-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    sub-int/2addr v7, v5

    iget v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    sub-int/2addr v8, v5

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    sub-int v1, v7, v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    sub-int v5, v7, v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v7, v7, v2

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v1, v9

    add-float/2addr v1, v8

    invoke-virtual {v7, v1}, Landroid/view/View;->setPivotX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v1, v1, v2

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v5, v8

    add-float/2addr v5, v7

    invoke-virtual {v1, v5}, Landroid/view/View;->setPivotY(F)V

    const/high16 v1, 0x42a20000    # 81.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v6, v1

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->startRadius:F
    invoke-static {v3, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6802(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;F)F

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v1, v1, v2

    const v5, 0x7f080086

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x8

    if-ge v2, v1, :cond_12

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v1, v1, v2

    const-string/jumbo v6, "scaleX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v1, v1, v2

    const-string/jumbo v6, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_2

    invoke-static {v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v8, v8, v2

    const-string/jumbo v9, "scaleX"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v8, v8, v2

    const-string/jumbo v9, "scaleY"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-gt v6, v7, :cond_6

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v6, v6, v2

    const-string/jumbo v7, "alpha"

    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v3, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6902(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6900(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6900(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v5

    const-wide/16 v6, 0x96

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6900(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6900(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/ChatAttachAlert$22;

    invoke-direct {v6, p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$22;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_c

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    goto/16 :goto_3

    :cond_8
    int-to-float v1, v3

    goto/16 :goto_4

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_b
    int-to-float v1, v3

    move v2, v1

    goto/16 :goto_7

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :cond_d
    if-nez p1, :cond_f

    const-wide/16 v0, 0xc8

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    if-gt v0, v2, :cond_e

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    int-to-float v0, v0

    :goto_f
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    const-string/jumbo v1, "scaleX"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v6, 0x0

    aput v6, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    const-string/jumbo v1, "scaleY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v6, 0x0

    aput v6, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v6, 0x0

    aput v6, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_e
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_f

    :cond_f
    const-wide/16 v0, 0xfa

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_4

    const-wide/16 v0, 0x14

    invoke-virtual {v4, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto/16 :goto_a

    :cond_10
    const/16 v0, 0x8

    goto/16 :goto_b

    :cond_11
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v1, v1, v2

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aget-object v1, v1, v2

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_d

    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_e

    :cond_13
    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f866666    # 1.05f
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f866666    # 1.05f
    .end array-data
.end method

.method private updateLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public allowCaption()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canDismiss()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public checkCamera(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.CAMERA"

    aput-object v3, v2, v4

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_2
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_4
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showCamera()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    goto :goto_1

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->initCamera()V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result v1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    goto :goto_1
.end method

.method public closeCamera(Z)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/high16 v4, 0x42a00000    # 80.0f

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->takingPhoto:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    sub-int/2addr v2, v3

    aput v2, v0, v6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    sub-int/2addr v2, v3

    aput v2, v0, v7

    if-eqz p1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v3}, Lorg/telegram/messenger/camera/CameraView;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v3, v2, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/camera/CameraView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "cameraOpenProgress"

    new-array v3, v6, [F

    aput v5, v3, v1

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v5, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v0, v3, v0

    const-string/jumbo v3, "alpha"

    new-array v4, v6, [F

    aput v5, v4, v1

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$16;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aput v1, v0, v1

    invoke-virtual {p0, v5}, Lorg/telegram/ui/Components/ChatAttachAlert;->setCameraOpenProgress(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v0, v2, v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setSystemUiVisibility(I)V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->loading:Z

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCamera(Z)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideCamera(Z)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    goto :goto_0
.end method

.method public dismissInternal()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    return-void
.end method

.method public dismissWithButtonClick(I)V
    .locals 1

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissWithButtonClick(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideCamera(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCameraOpenProgress()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpenProgress:F

    return v0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    new-array v2, v0, [I

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    aget v0, v2, v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getLeftInset()I

    move-result v3

    sub-int/2addr v0, v3

    aput v0, v2, v4

    new-instance v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v0}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    aget v3, v2, v4

    iput v3, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getScaleX()F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRevealRadius()F
    .locals 1

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F

    return v0
.end method

.method public getSelectedCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedPhotos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideCamera(Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, p1, v3}, Lorg/telegram/messenger/camera/CameraView;->destroy(ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachCameraCell;

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public init()V
    .locals 6

    const v5, 0xf4240

    const/4 v2, 0x0

    const/4 v4, 0x0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    const/16 v0, 0x64

    sget-object v3, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v1, v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-object v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    iput-object v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    iput-object v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->stickers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v2, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->clearSelectedPhotos()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v2, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotosButton()V

    return-void
.end method

.method public isPhotoChecked(I)Z
    .locals 2

    if-ltz p1, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadGalleryPhotos()V
    .locals 2

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    :cond_0
    return-void
.end method

.method protected onContainerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->processTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCustomCloseAnimation()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->startRevealAnimation(Z)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 8

    const/16 v7, 0x15

    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    if-ge v3, v4, :cond_0

    move v0, v1

    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    if-ne p1, v5, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, p5, v4

    invoke-virtual {v0, v2, v4, v3, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, p4, v3

    invoke-virtual {v0, v3, v2, p4, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v2

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->flashModeButton:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    if-ne p1, v3, :cond_7

    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_5

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v7, :cond_4

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, p4, v0

    sub-int/2addr v0, v2

    sub-int v2, p4, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_1
.end method

.method protected onCustomMeasure(Landroid/view/View;II)Z
    .locals 6

    const/4 v2, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v1, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-ge p2, p3, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-ne p1, v3, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraAnimationInProgress:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/camera/CameraView;->measure(II)V

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    if-ne p1, v3, :cond_3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraPanel:Landroid/widget/FrameLayout;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method protected onCustomOpenAnimation()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->startRevealAnimation(Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->cameraInitied:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getDelegate()Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ShutterButton$ShutterButtonDelegate;->shutterReleased()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOpenAnimationEnd()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onRevealAnimationEnd(Z)V

    return-void
.end method

.method public onOpenAnimationStart()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->requestingPermissions:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->resetRecordState()V

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSession;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Lorg/telegram/messenger/camera/CameraSession;Z)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpened:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->closeCamera(Z)V

    :cond_2
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideCamera(Z)V

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ShutterButton;->getState()Lorg/telegram/ui/Components/ShutterButton$State;

    move-result-object v0

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->RECORDING:Lorg/telegram/ui/Components/ShutterButton$State;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shutterButton:Lorg/telegram/ui/Components/ShutterButton;

    sget-object v1, Lorg/telegram/ui/Components/ShutterButton$State;->DEFAULT:Lorg/telegram/ui/Components/ShutterButton$State;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ShutterButton;->setState(Lorg/telegram/ui/Components/ShutterButton$State;Z)V

    :cond_4
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->requestingPermissions:Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCamera(Z)V

    :cond_0
    return-void
.end method

.method public scaleToFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ltz p1, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(I)V

    goto :goto_0
.end method

.method public setAllowDrawContent(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setAllowDrawContent(Z)V

    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->checkCameraViewPosition()V

    return-void
.end method

.method public setCameraOpenProgress(F)V
    .locals 11

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraOpenProgress:F

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aget v0, v0, v3

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    int-to-float v6, v0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ge v0, v1, :cond_2

    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getWidth()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    move v2, v1

    move v1, v0

    :goto_2
    cmpl-float v0, p1, v8

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/camera/CameraView;->setClipLeft(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/camera/CameraView;->setClipTop(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v7, v7, v4

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/camera/CameraView;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v7, v7, v3

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v7, v7, v4

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v7, v7, v3

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :cond_1
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sub-float/2addr v2, v5

    mul-float/2addr v2, p1

    add-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-float/2addr v1, v6

    mul-float/2addr v1, p1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    cmpl-float v1, p1, v8

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetX:I

    int-to-float v2, v2

    sub-float v5, v9, p1

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setClipLeft(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewOffsetY:I

    int-to-float v2, v2

    sub-float v5, v9, p1

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/camera/CameraView;->setClipTop(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sub-float v2, v9, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aget v1, v1, v4

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v2, v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->animateCameraValues:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v3, v9, p1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_4
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/camera/CameraView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    cmpg-float v0, p1, v10

    if-gtz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    div-float v1, p1, v10

    sub-float v1, v9, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto/16 :goto_0

    :cond_2
    move v0, v4

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getWidth()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    move v2, v1

    move v1, v0

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v8

    if-eqz v0, :cond_1

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/camera/CameraView;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    goto/16 :goto_3

    :cond_6
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    return-void
.end method

.method public setPhotoChecked(I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v2

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v5

    move v4, v3

    :goto_2
    if-ge v4, v5, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_4

    move-object v0, v1

    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(ZZ)V

    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotosButton()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v2

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2
.end method

.method protected setRevealRadius(F)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->invalidate()V

    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->startRadius:F
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6800(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$6900(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public showCamera()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/high16 v3, 0x42a00000    # 80.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x50

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->paused:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    if-nez v0, :cond_1

    new-instance v0, Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lorg/telegram/messenger/camera/CameraView;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$19;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$19;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setDelegate(Lorg/telegram/messenger/camera/CameraView$CameraViewDelegate;)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    const/4 v2, 0x2

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    const/16 v2, 0x55

    invoke-static {v4, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v1, v1, v5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraView:Lorg/telegram/messenger/camera/CameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v1, v1, v6

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v1, v1, v5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraIcon:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->cameraViewLocation:[I

    aget v1, v1, v6

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto/16 :goto_0
.end method

.method public updatePhotoAtIndex(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0201f4

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v0, v6, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    iget v3, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "thumb://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v0, v6, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updatePhotosButton()V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v7, v1, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$6400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v1, "PermissionStorage"

    const v2, 0x7f080434

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020060

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$6400(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "SendItems"

    const v3, 0x7f0804ce

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "(%d)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v1, "NoPhotos"

    const v2, 0x7f080356

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    goto :goto_1
.end method

.method public willHidePhotoViewer()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v4, :cond_0

    check-cast v0, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 2

    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    :cond_0
    return-void
.end method
