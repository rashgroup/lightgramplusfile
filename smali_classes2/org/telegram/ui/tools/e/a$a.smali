.class Lorg/telegram/ui/tools/e/a$a;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PPPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/e/a$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/e/a;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/e/a;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 10

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/e/a;->finishFragment()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->c(Lorg/telegram/ui/tools/e/a;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->d(Lorg/telegram/ui/tools/e/a;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/Telegram/HonariTell/Painting/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v3}, Lorg/telegram/ui/tools/e/a;->e(Lorg/telegram/ui/tools/e/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/e/a;->a(Lorg/telegram/ui/tools/e/a;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/e/a;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    new-instance v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    const-wide/16 v4, 0x0

    iget-object v3, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v3}, Lorg/telegram/ui/tools/e/a;->f(Lorg/telegram/ui/tools/e/a;)Ljava/lang/String;

    move-result-object v6

    move v3, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v1 .. v8}, Lorg/telegram/messenger/MediaController$PhotoEntry;-><init>(IIJLjava/lang/String;IZ)V

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/e/a;->a(Lorg/telegram/ui/tools/e/a;Lorg/telegram/messenger/MediaController$PhotoEntry;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->a(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v3, 0x2

    new-instance v4, Lorg/telegram/ui/tools/e/a$a$a;

    invoke-direct {v4, p0}, Lorg/telegram/ui/tools/e/a$a$a;-><init>(Lorg/telegram/ui/tools/e/a$a;)V

    iget-object v1, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v1}, Lorg/telegram/ui/tools/e/a;->g(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/ui/ChatActivity;

    move-result-object v5

    move-object v1, v9

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer;->openPhotoForSelect(Ljava/util/ArrayList;IILorg/telegram/ui/PhotoViewer$PhotoViewerProvider;Lorg/telegram/ui/ChatActivity;)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/e/a;->finishFragment()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->h(Lorg/telegram/ui/tools/e/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->i(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/ui/tools/e/a$g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/e/a$g;->a()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->j(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/ui/tools/e/a$h;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/e/a$h;->a()V

    goto/16 :goto_0
.end method
