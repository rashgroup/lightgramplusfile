.class public Lorg/telegram/ui/tools/f/d;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SpecialNotificationsActivity.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/f/d$c;,
        Lorg/telegram/ui/tools/f/d$b;,
        Lorg/telegram/ui/tools/f/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/tools/f/d;->b:I

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/f/d;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic b(Lorg/telegram/ui/tools/f/d;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/f/d;->e:I

    return v0
.end method

.method static synthetic c(Lorg/telegram/ui/tools/f/d;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/f/d;->d:I

    return v0
.end method

.method static synthetic d(Lorg/telegram/ui/tools/f/d;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/f/d;->c:I

    return v0
.end method

.method static synthetic e(Lorg/telegram/ui/tools/f/d;)I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/f/d;->b:I

    return v0
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v1, 0x7f0200e8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v1, "NotificationsAndSounds"

    const v2, 0x7f0803b0

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v1, Lorg/telegram/ui/tools/f/d$a;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/f/d$a;-><init>(Lorg/telegram/ui/tools/f/d;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/f/d;->fragmentView:Landroid/view/View;

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d;->fragmentView:Landroid/view/View;

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/ListView;

    invoke-direct {v1, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    const/4 v2, 0x5

    invoke-static {v2}, Lorg/telegram/ui/Components/AvatarDrawable;->getProfileBackColorForId(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V

    iget-object v1, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    new-instance v1, Lorg/telegram/ui/tools/f/d$c;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/tools/f/d$c;-><init>(Lorg/telegram/ui/tools/f/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    new-instance v1, Lorg/telegram/ui/tools/f/d$b;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/f/d$b;-><init>(Lorg/telegram/ui/tools/f/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d;->fragmentView:Landroid/view/View;

    return-object v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    :cond_0
    return-void
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    const-string/jumbo v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SoundDefault"

    const v3, 0x7f080510

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2}, Landroid/media/Ringtone;->stop()V

    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "SpecialNotifications"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v3, 0xc

    if-ne p1, v3, :cond_1

    if-eqz v1, :cond_4

    const-string/jumbo v3, "sound_sc"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "sound_path_sc"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lorg/telegram/ui/tools/f/d;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/tools/f/d;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "sound_sc"

    const-string/jumbo v1, "NoSound"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "sound_path_sc"

    const-string/jumbo v1, "NoSound"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public onFragmentCreate()Z
    .locals 2

    iget v0, p0, Lorg/telegram/ui/tools/f/d;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/tools/f/d;->b:I

    iput v0, p0, Lorg/telegram/ui/tools/f/d;->c:I

    iget v0, p0, Lorg/telegram/ui/tools/f/d;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/tools/f/d;->b:I

    iput v0, p0, Lorg/telegram/ui/tools/f/d;->e:I

    iget v0, p0, Lorg/telegram/ui/tools/f/d;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/tools/f/d;->b:I

    iput v0, p0, Lorg/telegram/ui/tools/f/d;->d:I

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    move-result v0

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->notificationsSettingsUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    return-void
.end method
