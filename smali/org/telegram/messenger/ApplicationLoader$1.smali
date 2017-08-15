.class final Lorg/telegram/messenger/ApplicationLoader$1;
.super Ljava/lang/Object;
.source "ApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader;->loadWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const v6, 0xf4241

    const/4 v0, 0x0

    # getter for: Lorg/telegram/messenger/ApplicationLoader;->sync:Ljava/lang/Object;
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "mainconfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "selectedBackground"

    const v4, 0xf4241

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "selectedColor"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "serviceMessageColor"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I
    invoke-static {v4}, Lorg/telegram/messenger/ApplicationLoader;->access$102(I)I

    const-string/jumbo v4, "serviceSelectedMessageColor"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->serviceSelectedMessageColor:I
    invoke-static {v2}, Lorg/telegram/messenger/ApplicationLoader;->access$202(I)I

    if-nez v0, :cond_0

    if-ne v3, v6, :cond_4

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z
    invoke-static {v2}, Lorg/telegram/messenger/ApplicationLoader;->access$402(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    # getter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$300()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    const v0, -0x291b11

    :cond_1
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_2
    # getter for: Lorg/telegram/messenger/ApplicationLoader;->serviceMessageColor:I
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$100()I

    move-result v0

    if-nez v0, :cond_3

    # invokes: Lorg/telegram/messenger/ApplicationLoader;->calcBackgroundColor()V
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->access$500()V

    :cond_3
    new-instance v0, Lorg/telegram/messenger/ApplicationLoader$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ApplicationLoader$1$1;-><init>(Lorg/telegram/messenger/ApplicationLoader$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_4
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z
    invoke-static {v2}, Lorg/telegram/messenger/ApplicationLoader;->access$402(Z)Z

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_5
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->cachedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lorg/telegram/messenger/ApplicationLoader;->access$302(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    # setter for: Lorg/telegram/messenger/ApplicationLoader;->isCustomTheme:Z
    invoke-static {v2}, Lorg/telegram/messenger/ApplicationLoader;->access$402(Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
