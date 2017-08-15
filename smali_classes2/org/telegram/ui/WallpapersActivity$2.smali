.class Lorg/telegram/ui/WallpapersActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "WallpapersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WallpapersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 9

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p1, v5, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/WallpapersActivity;->finishFragment()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v4, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/WallpapersActivity;->access$500(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I
    invoke-static {v1}, Lorg/telegram/ui/WallpapersActivity;->access$000(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-eqz v0, :cond_4

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:I

    const v2, 0xf4241

    if-eq v1, v2, :cond_4

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_wallPaper;

    if-eqz v1, :cond_4

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_6

    :goto_1
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WallPaper;->sizes:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v5, "wallpaper.jpg"

    invoke-direct {v0, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "selectedBackground"

    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I
    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$000(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "selectedColor"

    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->selectedColor:I
    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$200(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "overrideThemeWallpaper"

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->hasWallpaperFromTheme()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->overrideThemeWallpaper:Z
    invoke-static {v2}, Lorg/telegram/ui/WallpapersActivity;->access$100(Lorg/telegram/ui/WallpapersActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->reloadWallpaper()V

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/WallpapersActivity;->finishFragment()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    move v0, v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I
    invoke-static {v0}, Lorg/telegram/ui/WallpapersActivity;->access$000(Lorg/telegram/ui/WallpapersActivity;)I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/WallpapersActivity$2;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->updater:Lorg/telegram/ui/Components/WallpaperUpdater;
    invoke-static {v0}, Lorg/telegram/ui/WallpapersActivity;->access$600(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/Components/WallpaperUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/WallpaperUpdater;->getCurrentWallpaperPath()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v5, "wallpaper.jpg"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_1
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_2

    :cond_6
    move v8, v2

    move v2, v1

    move v1, v8

    goto/16 :goto_1
.end method
