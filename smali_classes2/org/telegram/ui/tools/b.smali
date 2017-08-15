.class public Lorg/telegram/ui/tools/b;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "AlertShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/b$e;,
        Lorg/telegram/ui/tools/b$d;,
        Lorg/telegram/ui/tools/b$a;,
        Lorg/telegram/ui/tools/b$c;,
        Lorg/telegram/ui/tools/b$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/FrameLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/view/View;

.field private g:Lorg/telegram/ui/Components/RecyclerListView;

.field private h:Lorg/telegram/messenger/support/widget/GridLayoutManager;

.field private i:Lorg/telegram/ui/tools/b$d;

.field private j:Lorg/telegram/ui/tools/b$e;

.field private k:Ljava/util/ArrayList;

.field private l:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:I

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/tools/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZZZLorg/telegram/ui/tools/b$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ZZZLorg/telegram/ui/tools/b$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;ZZZ",
            "Lorg/telegram/ui/tools/b$b;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/tools/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZZZLorg/telegram/ui/tools/b$b;Lorg/telegram/ui/tools/b$c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;ZZZLorg/telegram/ui/tools/b$b;Lorg/telegram/ui/tools/b$c;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;ZZZ",
            "Lorg/telegram/ui/tools/b$b;",
            "Lorg/telegram/ui/tools/b$c;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/tools/b;->n:Ljava/util/HashMap;

    move/from16 v0, p4

    iput-boolean v0, p0, Lorg/telegram/ui/tools/b;->w:Z

    iput-boolean p3, p0, Lorg/telegram/ui/tools/b;->o:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02024c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/tools/b;->m:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lorg/telegram/ui/tools/b;->k:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/tools/b$e;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/tools/b$e;-><init>(Lorg/telegram/ui/tools/b;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/tools/b;->j:Lorg/telegram/ui/tools/b$e;

    move/from16 v0, p5

    iput-boolean v0, p0, Lorg/telegram/ui/tools/b;->t:Z

    if-eqz p5, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/tools/b;->r:Z

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->id:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(I)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_exportMessageLink;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/tools/b$1;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/tools/b$1;-><init>(Lorg/telegram/ui/tools/b;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_0
    new-instance v2, Lorg/telegram/ui/tools/b$6;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/tools/b$6;-><init>(Lorg/telegram/ui/tools/b;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/tools/b;->containerView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->containerView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->containerView:Landroid/view/ViewGroup;

    sget v3, Lorg/telegram/ui/tools/b;->backgroundPaddingLeft:I

    const/4 v4, 0x0

    sget v5, Lorg/telegram/ui/tools/b;->backgroundPaddingLeft:I

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/tools/b;->a:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->a:Landroid/widget/FrameLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->a:Landroid/widget/FrameLayout;

    new-instance v3, Lorg/telegram/ui/tools/b$7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/tools/b$7;-><init>(Lorg/telegram/ui/tools/b;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/tools/b;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->d:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->d:Landroid/widget/LinearLayout;

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v9, p0, Lorg/telegram/ui/tools/b;->a:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lorg/telegram/ui/tools/b;->d:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->d:Landroid/widget/LinearLayout;

    new-instance v3, Lorg/telegram/ui/tools/b$8;

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-direct {v3, p0, v0, v1}, Lorg/telegram/ui/tools/b$8;-><init>(Lorg/telegram/ui/tools/b;Lorg/telegram/ui/tools/b$c;Lorg/telegram/ui/tools/b$b;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/tools/b;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->b:Landroid/widget/TextView;

    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->b:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->b:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->b:Landroid/widget/TextView;

    const v3, 0x7f02006e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->b:Landroid/widget/TextView;

    const/high16 v3, 0x41b80000    # 23.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->b:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v9, p0, Lorg/telegram/ui/tools/b;->d:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lorg/telegram/ui/tools/b;->b:Landroid/widget/TextView;

    const/4 v2, -0x2

    const/16 v3, 0x17

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "fonts/IRANSansMobile_Light.ttf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/tools/b;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->c:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->c:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->c:Landroid/widget/TextView;

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->d:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lorg/telegram/ui/tools/b;->c:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/CheckBoxSquare;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lorg/telegram/ui/Components/CheckBoxSquare;-><init>(Landroid/content/Context;Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBoxSquare;->setClickable(Z)V

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/CheckBoxSquare;->setPadding(IIII)V

    new-instance v3, Lorg/telegram/ui/tools/b$9;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/tools/b$9;-><init>(Lorg/telegram/ui/tools/b;Lorg/telegram/ui/Components/CheckBoxSquare;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/CheckBoxSquare;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string/jumbo v4, "ToAll"

    const v5, 0x7f080801

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 v4, -0x1

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x10

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Switch;->setDuplicateParentStateEnabled(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Switch;->setFocusable(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Switch;->setFocusableInTouchMode(Z)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Switch;->setClickable(Z)V

    new-instance v4, Lorg/telegram/ui/tools/b$10;

    invoke-direct {v4, p0, v2}, Lorg/telegram/ui/tools/b$10;-><init>(Lorg/telegram/ui/tools/b;Lorg/telegram/ui/Components/CheckBoxSquare;)V

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v2, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lorg/telegram/ui/tools/b;->a:Landroid/widget/FrameLayout;

    const/16 v2, 0x30

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x13

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string/jumbo v3, "Quote"

    const v4, 0x7f080781

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x10

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Switch;->setDuplicateParentStateEnabled(Z)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Switch;->setFocusable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Switch;->setFocusableInTouchMode(Z)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Switch;->setClickable(Z)V

    new-instance v2, Lorg/telegram/ui/tools/b$11;

    invoke-direct {v2, p0}, Lorg/telegram/ui/tools/b$11;-><init>(Lorg/telegram/ui/tools/b;)V

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v2, p0, Lorg/telegram/ui/tools/b;->o:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    const/4 v2, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lorg/telegram/ui/tools/b;->a:Landroid/widget/FrameLayout;

    const/16 v2, 0x30

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x13

    const/high16 v5, 0x42340000    # 45.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const-string/jumbo v3, "Caption"

    const v4, 0x7f0800f8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0x10

    invoke-static {v3, v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFI)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lorg/telegram/ui/Components/Switch;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/Switch;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setDuplicateParentStateEnabled(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setFocusable(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setFocusableInTouchMode(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setClickable(Z)V

    new-instance v3, Lorg/telegram/ui/tools/b$12;

    invoke-direct {v3, p0}, Lorg/telegram/ui/tools/b$12;-><init>(Lorg/telegram/ui/tools/b;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/Switch;->setChecked(Z)V

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lorg/telegram/ui/tools/b;->a:Landroid/widget/FrameLayout;

    const/16 v2, 0x30

    const/high16 v3, 0x42400000    # 48.0f

    const/16 v4, 0x13

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v11, v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0200f4

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const-string/jumbo v3, "actionBarDefault"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v10, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    const-string/jumbo v3, "ShareSendTo"

    const v4, 0x7f0804f6

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    invoke-virtual {v2, v9}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    const/4 v3, 0x1

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    const/16 v3, 0x4001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->clearCursorDrawable(Landroid/widget/EditText;)V

    iget-object v9, p0, Lorg/telegram/ui/tools/b;->a:Landroid/widget/FrameLayout;

    iget-object v11, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x35

    const/high16 v5, 0x42500000    # 52.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x428c0000    # 70.0f

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v11, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lorg/telegram/ui/tools/b;->a:Landroid/widget/FrameLayout;

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x35

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x430c0000    # 140.0f

    const/high16 v8, 0x42400000    # 48.0f

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    new-instance v3, Lorg/telegram/ui/tools/b$13;

    invoke-direct {v3, p0}, Lorg/telegram/ui/tools/b$13;-><init>(Lorg/telegram/ui/tools/b;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v9, Landroid/support/design/widget/TabLayout;

    invoke-direct {v9, p1}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "actionBarDefault"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/support/design/widget/TabLayout;->setBackgroundColor(I)V

    const-string/jumbo v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorColor(I)V

    invoke-static {v9}, Lorg/telegram/ui/tools/a/f;->a(Landroid/support/design/widget/TabLayout;)V

    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Landroid/support/design/widget/TabLayout;->setSelectedTabIndicatorHeight(I)V

    const/16 v2, 0x64

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v9, v2, v3}, Landroid/support/design/widget/TabLayout;->setTabTextColors(II)V

    invoke-static {v9}, Lorg/telegram/ui/tools/c/i;->a(Landroid/support/design/widget/TabLayout;)Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v3

    invoke-static {v3}, Lorg/telegram/ui/tools/c/i;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    new-instance v2, Lorg/telegram/ui/tools/b$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/tools/b$2;-><init>(Lorg/telegram/ui/tools/b;)V

    invoke-virtual {v9, v2}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    iget-object v10, p0, Lorg/telegram/ui/tools/b;->a:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x35

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v9, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v7, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/b;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lorg/telegram/messenger/support/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lorg/telegram/ui/tools/b;->h:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/tools/b$3;

    invoke-direct {v3, p0}, Lorg/telegram/ui/tools/b$3;-><init>(Lorg/telegram/ui/tools/b;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    iget-object v10, p0, Lorg/telegram/ui/tools/b;->containerView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x42be0000    # 95.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/tools/b$d;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/tools/b$d;-><init>(Lorg/telegram/ui/tools/b;Landroid/content/Context;)V

    iput-object v3, p0, Lorg/telegram/ui/tools/b;->i:Lorg/telegram/ui/tools/b$d;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    const v3, -0xa0909

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/tools/b$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/tools/b$4;-><init>(Lorg/telegram/ui/tools/b;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/tools/b$5;

    invoke-direct {v3, p0}, Lorg/telegram/ui/tools/b$5;-><init>(Lorg/telegram/ui/tools/b;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/tools/b;->l:Lorg/telegram/ui/Components/EmptyTextProgressView;

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->l:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setShowAtCenter(Z)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->l:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->l:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v3, "NoChats"

    const v4, 0x7f080348

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v3, p0, Lorg/telegram/ui/tools/b;->l:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    iget-object v10, p0, Lorg/telegram/ui/tools/b;->containerView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/telegram/ui/tools/b;->l:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->containerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lorg/telegram/ui/tools/b;->a:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    const/16 v5, 0x60

    const/16 v6, 0x33

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/tools/b;->f:Landroid/view/View;

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->f:Landroid/view/View;

    const v3, 0x7f0200e4

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v10, p0, Lorg/telegram/ui/tools/b;->containerView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/telegram/ui/tools/b;->f:Landroid/view/View;

    const/4 v2, -0x1

    const/high16 v3, 0x40400000    # 3.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lorg/telegram/ui/tools/c/h;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/b;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/messenger/MessageObject;Z)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/telegram/messenger/MessageObject;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0, p3}, Lorg/telegram/ui/tools/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/b;->v:I

    return p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b;Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;)Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b;->q:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->q:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string/jumbo v1, "label"

    iget-object v2, p0, Lorg/telegram/ui/tools/b;->q:Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_exportedMessageLink;->link:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string/jumbo v0, "LinkCopied"

    const v1, 0x7f0802d4

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/tools/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/b;->s:Z

    return v0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/b;->r:Z

    return p1
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lorg/telegram/ui/tools/b;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic b(Lorg/telegram/ui/tools/b;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/b;->u:I

    return v0
.end method

.method static synthetic b(Lorg/telegram/ui/tools/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/b;->s:Z

    return p1
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lorg/telegram/ui/tools/b;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic c(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$e;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->j:Lorg/telegram/ui/tools/b$e;

    return-object v0
.end method

.method static synthetic c(Lorg/telegram/ui/tools/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/b;->o:Z

    return p1
.end method

.method private d()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/b$a;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b$a;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    sub-int v0, v3, v0

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, -0x3e8

    goto :goto_1
.end method

.method static synthetic d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->i:Lorg/telegram/ui/tools/b$d;

    return-object v0
.end method

.method static synthetic d(Lorg/telegram/ui/tools/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/b;->p:Z

    return p1
.end method

.method static synthetic e(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method private e()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/b$a;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    if-lez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b$a;->getAdapterPosition()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iget v1, p0, Lorg/telegram/ui/tools/b;->u:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/b;->g:Lorg/telegram/ui/Components/RecyclerListView;

    iput v0, p0, Lorg/telegram/ui/tools/b;->u:I

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->a:Landroid/widget/FrameLayout;

    iget v1, p0, Lorg/telegram/ui/tools/b;->u:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->f:Landroid/view/View;

    iget v1, p0, Lorg/telegram/ui/tools/b;->u:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->l:Lorg/telegram/ui/Components/EmptyTextProgressView;

    iget v1, p0, Lorg/telegram/ui/tools/b;->u:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTranslationY(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method static synthetic f(Lorg/telegram/ui/tools/b;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/tools/b;->e()V

    return-void
.end method

.method static synthetic g(Lorg/telegram/ui/tools/b;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic h(Lorg/telegram/ui/tools/b;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->n:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic i(Lorg/telegram/ui/tools/b;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/b;->t:Z

    return v0
.end method

.method static synthetic j(Lorg/telegram/ui/tools/b;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/b;->r:Z

    return v0
.end method

.method static synthetic k(Lorg/telegram/ui/tools/b;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic l(Lorg/telegram/ui/tools/b;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/b;->w:Z

    return v0
.end method

.method static synthetic m(Lorg/telegram/ui/tools/b;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/b;->p:Z

    return v0
.end method

.method static synthetic n(Lorg/telegram/ui/tools/b;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/ui/tools/b;->o:Z

    return v0
.end method

.method static synthetic o(Lorg/telegram/ui/tools/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic p(Lorg/telegram/ui/tools/b;)I
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/tools/b;->d()I

    move-result v0

    return v0
.end method

.method static synthetic q(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->l:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic r(Lorg/telegram/ui/tools/b;)Lorg/telegram/messenger/support/widget/GridLayoutManager;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->h:Lorg/telegram/messenger/support/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic s(Lorg/telegram/ui/tools/b;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/b;->v:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 7

    const v6, 0x7f0804c8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lorg/telegram/ui/tools/b;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "fonts/IRANSansMobile_Light.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/b;->c:Landroid/widget/TextView;

    const-string/jumbo v2, "Send"

    invoke-static {v2, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->c:Landroid/widget/TextView;

    const-string/jumbo v1, "CopyLink"

    const v2, 0x7f08018f

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->b:Landroid/widget/TextView;

    const-string/jumbo v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/tools/b;->n:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/b;->c:Landroid/widget/TextView;

    const-string/jumbo v1, "Send"

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
