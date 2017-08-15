.class Lorg/telegram/ui/Components/WallpaperUpdater$1;
.super Ljava/lang/Object;
.source "WallpaperUpdater.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WallpaperUpdater;->showAlert(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

.field final synthetic val$fromTheme:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/WallpaperUpdater;Z)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->val$fromTheme:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v1, 0x2

    const/4 v0, 0x1

    if-nez p2, :cond_3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    const-string/jumbo v2, "output"

    iget-object v3, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    # getter for: Lorg/telegram/ui/Components/WallpaperUpdater;->parentActivity:Landroid/app/Activity;
    invoke-static {v3}, Lorg/telegram/ui/Components/WallpaperUpdater;->access$000(Lorg/telegram/ui/Components/WallpaperUpdater;)Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.classicgroup.lightgramplus.provider"

    invoke-static {v3, v4, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    # setter for: Lorg/telegram/ui/Components/WallpaperUpdater;->currentPicturePath:Ljava/lang/String;
    invoke-static {v2, v1}, Lorg/telegram/ui/Components/WallpaperUpdater;->access$102(Lorg/telegram/ui/Components/WallpaperUpdater;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    # getter for: Lorg/telegram/ui/Components/WallpaperUpdater;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/Components/WallpaperUpdater;->access$000(Lorg/telegram/ui/Components/WallpaperUpdater;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    if-ne p2, v0, :cond_4

    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    # getter for: Lorg/telegram/ui/Components/WallpaperUpdater;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/Components/WallpaperUpdater;->access$000(Lorg/telegram/ui/Components/WallpaperUpdater;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->val$fromTheme:Z

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    # getter for: Lorg/telegram/ui/Components/WallpaperUpdater;->delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/WallpaperUpdater;->access$200(Lorg/telegram/ui/Components/WallpaperUpdater;)Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;->needOpenColorPicker()V

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/WallpaperUpdater$1;->this$0:Lorg/telegram/ui/Components/WallpaperUpdater;

    # getter for: Lorg/telegram/ui/Components/WallpaperUpdater;->delegate:Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/WallpaperUpdater;->access$200(Lorg/telegram/ui/Components/WallpaperUpdater;)Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/WallpaperUpdater$WallpaperUpdaterDelegate;->didSelectWallpaper(Ljava/io/File;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
