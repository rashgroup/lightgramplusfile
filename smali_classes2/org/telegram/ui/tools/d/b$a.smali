.class Lorg/telegram/ui/tools/d/b$a;
.super Ljava/lang/Object;
.source "DownloadManeger.java"

# interfaces
.implements Lorg/telegram/ui/tools/d/c$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/d/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/d/b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 10

    const/4 v9, 0x1

    const/16 v8, 0x9

    const/4 v7, 0x3

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10008e

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    const/4 v1, 0x0

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->j()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->c()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->l()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->user_id:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;-><init>()V

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v3, ""

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->m()I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->e()I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    iget v3, v0, Lorg/telegram/ui/tools/d/a/a;->e:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    const/16 v3, 0xe

    if-ne v1, v3, :cond_5

    const-string/jumbo v1, "KODS"

    const-string/jumbo v3, "OK IS HERE"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    const/4 v1, 0x0

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->j()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->c()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->l()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->user_id:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;-><init>()V

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v3, ""

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    iget-boolean v1, v1, Lorg/telegram/ui/tools/d/a/a;->n:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    iget-object v1, v1, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v9}, Lorg/telegram/ui/tools/d/a/b;->b(Ljava/lang/String;I)Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/d/b;->b(Lorg/telegram/ui/tools/d/b;)Lorg/telegram/ui/tools/d/c;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/d/b;->b(Lorg/telegram/ui/tools/d/b;)Lorg/telegram/ui/tools/d/c;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/telegram/ui/tools/d/c;->notifyItemChanged(I)V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    if-eq v1, v8, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    if-eq v1, v7, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    const/16 v3, 0xe

    if-ne v1, v3, :cond_3

    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v2, v9, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver2(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    :cond_3
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v0

    if-ne v0, v7, :cond_8

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/tools/d/b;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    if-ne v1, v8, :cond_1

    const-string/jumbo v1, "jjjx"

    const-string/jumbo v3, "03"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    const/4 v1, 0x0

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->j()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->c()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->l()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->user_id:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;-><init>()V

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v3, ""

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    if-eq v1, v8, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    if-eq v1, v7, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_3

    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->b(Lorg/telegram/ui/tools/d/b;)Lorg/telegram/ui/tools/d/c;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    iget-object v1, v0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Lorg/telegram/ui/tools/d/a/b;->b(Ljava/lang/String;I)Z

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->b(Lorg/telegram/ui/tools/d/b;)Lorg/telegram/ui/tools/d/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/tools/d/c;->notifyItemChanged(I)V

    goto/16 :goto_1

    :cond_8
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v0

    if-ne v0, v8, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/tools/d/b;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f100171

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    iget-object v1, v0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/a/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/d/a/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->b(Lorg/telegram/ui/tools/d/b;)Lorg/telegram/ui/tools/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/c;->notifyDataSetChanged()V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f10016c

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "jjj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cv click position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->o()Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v0

    if-ne v0, v7, :cond_b

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/tools/d/b;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_b
    :try_start_3
    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v0

    if-ne v0, v8, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/d/b;->a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b$a;->a:Lorg/telegram/ui/tools/d/b;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/tools/d/b;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method
