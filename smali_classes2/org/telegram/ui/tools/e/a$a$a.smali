.class Lorg/telegram/ui/tools/e/a$a$a;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "PPPP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/e/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/e/a$a;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/e/a$a;)V
    .locals 8

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/telegram/ui/tools/e/a$a$a;->a:Lorg/telegram/ui/tools/e/a$a;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    iget-object v0, p1, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->a(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->a(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v2}, Lorg/telegram/ui/tools/e/a;->b(Lorg/telegram/ui/tools/e/a;)J

    move-result-wide v2

    iget-object v4, p1, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v4}, Lorg/telegram/ui/tools/e/a;->a(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v4

    iget-object v5, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    move-object v4, v1

    move-object v6, v1

    move-object v7, v1

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->a(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v0}, Lorg/telegram/ui/tools/e/a;->a(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v2}, Lorg/telegram/ui/tools/e/a;->b(Lorg/telegram/ui/tools/e/a;)J

    move-result-wide v2

    iget-object v4, p1, Lorg/telegram/ui/tools/e/a$a;->a:Lorg/telegram/ui/tools/e/a;

    invoke-static {v4}, Lorg/telegram/ui/tools/e/a;->a(Lorg/telegram/ui/tools/e/a;)Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-result-object v4

    iget-object v5, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    move-object v4, v1

    move-object v6, v1

    move-object v7, v1

    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhoto(Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    goto :goto_0
.end method
