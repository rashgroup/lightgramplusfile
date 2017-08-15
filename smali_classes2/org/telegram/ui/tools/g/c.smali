.class public Lorg/telegram/ui/tools/g/c;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "UpdateActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/g/c$e;,
        Lorg/telegram/ui/tools/g/c$d;,
        Lorg/telegram/ui/tools/g/c$c;,
        Lorg/telegram/ui/tools/g/c$b;,
        Lorg/telegram/ui/tools/g/c$a;
    }
.end annotation


# instance fields
.field protected a:Lorg/telegram/ui/Components/BackupImageView;

.field private b:I

.field private c:Lorg/telegram/ui/tools/g/f;

.field private d:Lorg/telegram/ui/tools/g/a;

.field private e:Landroid/widget/TextView;

.field private f:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private g:Landroid/widget/ListView;

.field private h:Z

.field private i:Lorg/telegram/tgnet/TLRPC$User;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/tools/g/c;->b:I

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/g/c;I)I
    .locals 0

    iput p1, p0, Lorg/telegram/ui/tools/g/c;->b:I

    return p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/g/c;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/g/c;->i:Lorg/telegram/tgnet/TLRPC$User;

    return-object p1
.end method

.method static synthetic a(Lorg/telegram/ui/tools/g/c;)Lorg/telegram/ui/tools/g/a;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->d:Lorg/telegram/ui/tools/g/a;

    return-object v0
.end method

.method private b()V
    .locals 5

    new-instance v0, Lorg/telegram/ui/tools/g/f;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/tools/g/a;

    invoke-direct {v2}, Lorg/telegram/ui/tools/g/a;-><init>()V

    iget v3, p0, Lorg/telegram/ui/tools/g/c;->b:I

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/tools/g/a;->a(II)Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/tools/g/f;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/c;->c:Lorg/telegram/ui/tools/g/f;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/telegram/ui/tools/g/c;->c:Lorg/telegram/ui/tools/g/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic b(Lorg/telegram/ui/tools/g/c;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/tools/g/c;->b()V

    return-void
.end method

.method private c()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lorg/telegram/ui/tools/g/c;->i:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/tools/g/c;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method static synthetic c(Lorg/telegram/ui/tools/g/c;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/tools/g/c;->d()V

    return-void
.end method

.method static synthetic d(Lorg/telegram/ui/tools/g/c;)Lorg/telegram/ui/tools/g/f;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->c:Lorg/telegram/ui/tools/g/f;

    return-object v0
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "AreYouSureDeleteChanges"

    const v2, 0x7f080646

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, "AppName"

    const v2, 0x7f080086

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, "OK"

    const v2, 0x7f0803c8

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/tools/g/c$a;

    invoke-direct {v2, p0}, Lorg/telegram/ui/tools/g/c$a;-><init>(Lorg/telegram/ui/tools/g/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, "Cancel"

    const v2, 0x7f0800f2

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/g/c;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method static synthetic e(Lorg/telegram/ui/tools/g/c;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->i:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method static synthetic f(Lorg/telegram/ui/tools/g/c;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/tools/g/c;->c()V

    return-void
.end method

.method static synthetic g(Lorg/telegram/ui/tools/g/c;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->f:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08086b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f08063d

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080849

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f08084b

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Lorg/telegram/ui/tools/g/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f08084a

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lorg/telegram/ui/tools/g/c;->b:I

    if-eqz v3, :cond_0

    iget v0, p0, Lorg/telegram/ui/tools/g/c;->b:I

    add-int/lit8 v0, v0, -0x1

    :cond_0
    new-instance v3, Lorg/telegram/ui/tools/g/c$e;

    invoke-direct {v3, p0}, Lorg/telegram/ui/tools/g/c$e;-><init>(Lorg/telegram/ui/tools/g/c;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/tools/g/c;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public allowCaption()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/c;->fragmentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v7}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    invoke-static {v6}, Lorg/telegram/ui/tools/c/g;->e(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "ContactsChanges"

    const v2, 0x7f080811

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/tools/g/c$b;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/g/c$b;-><init>(Lorg/telegram/ui/tools/g/c;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    const/4 v1, 0x2

    const v2, 0x7f020096

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x3

    const v2, 0x7f0200ec

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/g/c;->f:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v0, Lorg/telegram/ui/tools/g/a;

    invoke-direct {v0}, Lorg/telegram/ui/tools/g/a;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/c;->d:Lorg/telegram/ui/tools/g/a;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/tools/g/c$c;

    invoke-direct {v0, p0}, Lorg/telegram/ui/tools/g/c$c;-><init>(Lorg/telegram/ui/tools/g/c;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/c;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->e:Landroid/widget/TextView;

    const v2, -0x7f7f80

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->e:Landroid/widget/TextView;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->e:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->e:Landroid/widget/TextView;

    const-string/jumbo v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->e:Landroid/widget/TextView;

    const-string/jumbo v2, "NoContactChanges"

    const v3, 0x7f080750

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v2, p0, Lorg/telegram/ui/tools/g/c;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/tools/g/f;

    new-instance v2, Lorg/telegram/ui/tools/g/a;

    invoke-direct {v2}, Lorg/telegram/ui/tools/g/a;-><init>()V

    iget v3, p0, Lorg/telegram/ui/tools/g/c;->b:I

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/tools/g/a;->a(II)Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lorg/telegram/ui/tools/g/f;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/c;->c:Lorg/telegram/ui/tools/g/f;

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/telegram/ui/tools/g/c;->c:Lorg/telegram/ui/tools/g/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->g:Landroid/widget/ListView;

    new-instance v1, Lorg/telegram/ui/tools/g/c$d;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/g/c$d;-><init>(Lorg/telegram/ui/tools/g/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/tools/g/c;->h:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/tools/g/h;->a()V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->d:Lorg/telegram/ui/tools/g/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/g/a;->a()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/tools/g/c;->b()V

    return-void
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/tools/g/c;->i:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/tools/g/c;->i:Lorg/telegram/tgnet/TLRPC$User;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/tools/g/c;->i:Lorg/telegram/tgnet/TLRPC$User;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v1, :cond_0

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iget v3, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    if-ne v2, v3, :cond_0

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iget v2, p2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [I

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->a:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    new-instance v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v0}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 v2, 0x1

    aget v1, v1, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    iget-object v1, p0, Lorg/telegram/ui/tools/g/c;->a:Lorg/telegram/ui/Components/BackupImageView;

    iput-object v1, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/tools/g/c;->a:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    iput v1, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->size:I

    iget-object v1, p0, Lorg/telegram/ui/tools/g/c;->a:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method public getSelectedCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isPhotoChecked(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFragmentCreate()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/tools/g/c;->h:Z

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    iput-boolean v2, p0, Lorg/telegram/ui/tools/g/c;->h:Z

    invoke-static {}, Lorg/telegram/ui/tools/g/h;->a()V

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->d:Lorg/telegram/ui/tools/g/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/g/a;->a()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->mainUserInfoChanged:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public scaleToFill()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0

    return-void
.end method

.method public setPhotoChecked(I)V
    .locals 0

    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 0

    return-void
.end method

.method public willHidePhotoViewer()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->a:Lorg/telegram/ui/Components/BackupImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/g/c;->a:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/ImageReceiver;->setVisible(ZZ)V

    :cond_0
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 0

    return-void
.end method
