.class final Lorg/telegram/ui/ActionBar/Theme$6;
.super Ljava/lang/Object;
.source "Theme.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/Theme;->loadWallpaper()V
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
    .locals 9

    const v8, 0xf4241

    const/4 v3, 0x0

    # getter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaperSync:Ljava/lang/Object;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$200()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "overrideThemeWallpaper"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lorg/telegram/ui/ActionBar/Theme;->currentColors:Ljava/util/HashMap;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$300()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "chat_wallpaper"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme:Z
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z

    :cond_0
    :goto_0
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$400()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_3

    :try_start_1
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "selectedBackground"

    const v2, 0xf4241

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "selectedColor"

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    if-ne v1, v8, :cond_9

    :try_start_2
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme:Z
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$400()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    const v0, -0x291b11

    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_3
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$400()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    # invokes: Lorg/telegram/ui/ActionBar/Theme;->calcBackgroundColor(Landroid/graphics/drawable/Drawable;I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->access$900(Landroid/graphics/drawable/Drawable;I)V

    new-instance v0, Lorg/telegram/ui/ActionBar/Theme$6$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ActionBar/Theme$6$1;-><init>(Lorg/telegram/ui/ActionBar/Theme$6;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    monitor-exit v4

    return-void

    :cond_4
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->themedWallpaperFileOffset:I
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$600()I

    move-result v0

    if-lez v0, :cond_0

    # getter for: Lorg/telegram/ui/ActionBar/Theme;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    if-nez v0, :cond_5

    # getter for: Lorg/telegram/ui/ActionBar/Theme;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    :cond_5
    const/4 v1, 0x0

    :try_start_4
    # getter for: Lorg/telegram/ui/ActionBar/Theme;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-eqz v0, :cond_7

    # getter for: Lorg/telegram/ui/ActionBar/Theme;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getAssetFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    # getter for: Lorg/telegram/ui/ActionBar/Theme;->themedWallpaperFileOffset:I
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$600()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->themedWallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->access$802(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme:Z
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_6
    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :cond_7
    :try_start_8
    new-instance v0, Ljava/io/File;

    # getter for: Lorg/telegram/ui/ActionBar/Theme;->currentTheme:Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->access$700()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_3
    :try_start_9
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v1, :cond_8

    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_8
    :goto_5
    :try_start_d
    throw v0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    :cond_9
    :try_start_e
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme:Z
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z

    goto/16 :goto_1

    :catch_4
    move-exception v1

    goto/16 :goto_1

    :cond_a
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->wallpaper:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->access$402(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/ActionBar/Theme;->isCustomTheme:Z
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->access$502(Z)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    :catch_5
    move-exception v0

    move v0, v3

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method
