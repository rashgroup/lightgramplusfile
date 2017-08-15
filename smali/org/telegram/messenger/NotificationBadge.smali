.class public Lorg/telegram/messenger/NotificationBadge;
.super Ljava/lang/Object;
.source "NotificationBadge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/NotificationBadge$VivoHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$SamsungHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;,
        Lorg/telegram/messenger/NotificationBadge$NovaHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$HuaweiHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$DefaultBadger;,
        Lorg/telegram/messenger/NotificationBadge$AsusHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$AdwHomeBadger;,
        Lorg/telegram/messenger/NotificationBadge$Badger;
    }
.end annotation


# static fields
.field private static final BADGERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lorg/telegram/messenger/NotificationBadge$Badger;",
            ">;>;"
        }
    .end annotation
.end field

.field private static badger:Lorg/telegram/messenger/NotificationBadge$Badger;

.field private static componentName:Landroid/content/ComponentName;

.field private static initied:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$AdwHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$ApexHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$NewHtcHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$NovaHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$SonyHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$AsusHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$HuaweiHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$SamsungHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    const-class v1, Lorg/telegram/messenger/NotificationBadge$VivoHomeBadger;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/messenger/NotificationBadge;->canResolveBroadcast(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static applyCount(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    if-nez v2, :cond_0

    sget-boolean v2, Lorg/telegram/messenger/NotificationBadge;->initied:Z

    if-nez v2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/NotificationBadge;->initBadger()Z

    const/4 v2, 0x1

    sput-boolean v2, Lorg/telegram/messenger/NotificationBadge;->initied:Z

    :cond_0
    sget-object v2, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    sget-object v2, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    invoke-interface {v2, p0}, Lorg/telegram/messenger/NotificationBadge$Badger;->executeBadge(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static canResolveBroadcast(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static close(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static initBadger()Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    sput-object v2, Lorg/telegram/messenger/NotificationBadge;->componentName:Landroid/content/ComponentName;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "resolver"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->BADGERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/NotificationBadge$Badger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/telegram/messenger/NotificationBadge$Badger;->getSupportLaunchers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-object v0, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    :cond_3
    sget-object v0, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    if-nez v0, :cond_4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;

    invoke-direct {v0}, Lorg/telegram/messenger/NotificationBadge$XiaomiHomeBadger;-><init>()V

    sput-object v0, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    :cond_4
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :cond_5
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "ZUK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;

    invoke-direct {v0}, Lorg/telegram/messenger/NotificationBadge$ZukHomeBadger;-><init>()V

    sput-object v0, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    goto :goto_2

    :cond_6
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;

    invoke-direct {v0}, Lorg/telegram/messenger/NotificationBadge$OPPOHomeBader;-><init>()V

    sput-object v0, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    goto :goto_2

    :cond_7
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lorg/telegram/messenger/NotificationBadge$VivoHomeBadger;

    invoke-direct {v0}, Lorg/telegram/messenger/NotificationBadge$VivoHomeBadger;-><init>()V

    sput-object v0, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    goto :goto_2

    :cond_8
    new-instance v0, Lorg/telegram/messenger/NotificationBadge$DefaultBadger;

    invoke-direct {v0}, Lorg/telegram/messenger/NotificationBadge$DefaultBadger;-><init>()V

    sput-object v0, Lorg/telegram/messenger/NotificationBadge;->badger:Lorg/telegram/messenger/NotificationBadge$Badger;

    goto :goto_2
.end method
