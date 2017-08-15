.class public Lorg/telegram/ui/tools/d/b;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "DownloadManeger.java"

# interfaces
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/d/b$c;,
        Lorg/telegram/ui/tools/d/b$b;,
        Lorg/telegram/ui/tools/d/b$a;
    }
.end annotation


# static fields
.field public static a:Lorg/telegram/ui/tools/d/b;

.field private static i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:Lorg/telegram/ui/tools/d/a/b;

.field c:Landroid/support/v7/widget/LinearLayoutManager;

.field d:Ljava/lang/String;

.field e:F

.field private f:I

.field private g:Ljava/util/List;

.field private h:Lorg/telegram/ui/tools/d/c;

.field private j:Lorg/telegram/ui/ActionBar/ActionBarLayout;

.field private k:Landroid/widget/ProgressBar;

.field private l:Landroid/widget/LinearLayout;

.field private m:Lorg/telegram/ui/tools/d/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/telegram/ui/tools/d/b;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/tools/d/b;->e:F

    new-instance v0, Lorg/telegram/ui/tools/d/a/b;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/tools/d/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/d/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    return-object v0
.end method

.method private b()Ljava/util/List;
    .locals 2

    new-instance v0, Lorg/telegram/ui/tools/d/a/b;

    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/tools/d/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/b;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lorg/telegram/ui/tools/d/b;)Lorg/telegram/ui/tools/d/c;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/telegram/ui/tools/d/b;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    move v2, v3

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    const-string/jumbo v1, "jjj"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  elementDownload.getType()----->  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    if-ne v1, v11, :cond_0

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/telegram/ui/tools/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v4, p0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Lorg/telegram/ui/tools/d/a/b;->b(Ljava/lang/String;I)Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v1, v1, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1, v3}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/tools/d/a/a;->a(F)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v1, v1, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1, v9}, Lorg/telegram/ui/tools/d/a/a;->a(F)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/tools/d/c;->notifyItemChanged(I)V

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    const/16 v4, 0xe

    if-ne v1, v4, :cond_4

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/tools/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/tools/d/a/b;->b(Ljava/lang/String;I)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/tools/d/a/a;->a(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/tools/d/a/a;->a(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/tools/d/c;->notifyItemChanged(I)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    iget-boolean v1, v1, Lorg/telegram/ui/tools/d/a/a;->n:Z

    if-eqz v1, :cond_0

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iput-object v10, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->j()I

    move-result v1

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->c()I

    move-result v1

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->l()I

    move-result v1

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->user_id:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;-><init>()V

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, ""

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->d()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->m()I

    move-result v5

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->e()I

    move-result v5

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    iget v5, v0, Lorg/telegram/ui/tools/d/a/a;->e:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v4, v8, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4, v1, v10, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver2(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    iget-boolean v1, v1, Lorg/telegram/ui/tools/d/a/a;->n:Z

    if-eqz v1, :cond_1

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iput-object v10, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->j()I

    move-result v1

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->c()I

    move-result v1

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->l()I

    move-result v1

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->user_id:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;-><init>()V

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, ""

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->d()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->m()I

    move-result v5

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->e()I

    move-result v5

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    iget v5, v0, Lorg/telegram/ui/tools/d/a/a;->e:I

    iput v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v4, v8, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v0, v10, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver2(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v1

    const/16 v4, 0x9

    if-ne v1, v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v11}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v5

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/telegram/ui/tools/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lorg/telegram/ui/tools/d/a/b;->b(Ljava/lang/String;I)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/tools/d/a/a;->a(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v9}, Lorg/telegram/ui/tools/d/a/a;->a(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/tools/d/c;->notifyItemChanged(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/tools/d/a/a;

    iget-boolean v1, v1, Lorg/telegram/ui/tools/d/a/a;->n:Z

    if-eqz v1, :cond_1

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iput-object v10, v4, Lorg/telegram/tgnet/TLRPC$Document;->file_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->j()I

    move-result v1

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->c()I

    move-result v1

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->l()I

    move-result v1

    iput v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->user_id:I

    new-instance v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;-><init>()V

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, ""

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->d()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v4, v8, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v0, v10, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver2(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto/16 :goto_2

    :cond_6
    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 13

    const/high16 v12, -0x40800000    # -1.0f

    const/16 v11, 0x11

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, -0x2

    new-instance v0, Lorg/telegram/ui/tools/d/b$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/tools/d/b$1;-><init>(Lorg/telegram/ui/tools/d/b;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ActionBar/ActionBarLayout;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/tools/d/b;->j:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const v2, 0x7f0200e8

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "DownloadManager"

    const v3, 0x7f0806af

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, v10}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v2, Lorg/telegram/ui/tools/d/b$2;

    invoke-direct {v2, p0}, Lorg/telegram/ui/tools/d/b$2;-><init>(Lorg/telegram/ui/tools/d/b;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string/jumbo v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(ILandroid/graphics/drawable/Drawable;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/tools/d/b$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/tools/d/b$3;-><init>(Lorg/telegram/ui/tools/d/b;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lorg/telegram/ui/tools/d/b;->a()V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/tools/d/b;->fragmentView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f040034

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x55

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sput-object p0, Lorg/telegram/ui/tools/d/b;->a:Lorg/telegram/ui/tools/d/b;

    const v0, 0x7f1000d0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v4, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/tools/d/b;->c:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, p0, Lorg/telegram/ui/tools/d/b;->c:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-direct {p0}, Lorg/telegram/ui/tools/d/b;->b()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->generateObserverTag()I

    move-result v4

    iput v4, p0, Lorg/telegram/ui/tools/d/b;->f:I

    const-string/jumbo v4, "jjj"

    iget-object v5, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lorg/telegram/ui/tools/d/c;

    iget-object v5, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    new-instance v6, Lorg/telegram/ui/tools/d/b$a;

    invoke-direct {v6, p0}, Lorg/telegram/ui/tools/d/b$a;-><init>(Lorg/telegram/ui/tools/d/b;)V

    new-instance v7, Lorg/telegram/ui/tools/d/b$b;

    invoke-direct {v7, p0}, Lorg/telegram/ui/tools/d/b$b;-><init>(Lorg/telegram/ui/tools/d/b;)V

    invoke-direct {v4, p1, v5, v6, v7}, Lorg/telegram/ui/tools/d/c;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/telegram/ui/tools/d/c$f;Lorg/telegram/ui/tools/d/c$e;)V

    iput-object v4, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v4, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->l:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->l:Landroid/widget/LinearLayout;

    invoke-static {v9, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->l:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/tools/d/b$4;

    invoke-direct {v4, p0}, Lorg/telegram/ui/tools/d/b$4;-><init>(Lorg/telegram/ui/tools/d/b;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "NoChats"

    const v5, 0x7f08074e

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, -0x6a6a6b

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v0, v10, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lorg/telegram/ui/tools/d/b;->l:Landroid/widget/LinearLayout;

    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "NoChatsHelp"

    const v5, 0x7f08074f

    invoke-static {v0, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isSmallTablet()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xa

    const/16 v6, 0x20

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v9, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v9, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0x6a6a6b

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {v4, v10, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v4, v0, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->l:Landroid/widget/LinearLayout;

    invoke-static {v8, v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b;->k:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->k:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->k:Landroid/widget/ProgressBar;

    invoke-static {v8, v8, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->fragmentView:Landroid/view/View;

    return-object v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/tools/d/b;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string/jumbo v2, "DownloadManager"

    const v3, 0x7f0806af

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public getObserverTag()I
    .locals 1

    iget v0, p0, Lorg/telegram/ui/tools/d/b;->f:I

    return v0
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v0, "jjj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  onFailedDownload----->  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lorg/telegram/ui/tools/d/a/b;->b(Ljava/lang/String;I)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/d/c;->notifyItemChanged(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onFragmentCreate()Z
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/tools/d/b;->m:Lorg/telegram/ui/tools/d/b$c;

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/tools/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/tools/d/a/a;->a(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/tools/d/a/a;->a(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/c;->notifyDataSetChanged()V

    const-string/jumbo v0, "jjj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  fileName----->  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  progress----->  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "jjj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  fileName----->  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  progress----->  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lorg/telegram/ui/tools/d/a/b;->b(Ljava/lang/String;I)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/tools/d/a/a;->b(Z)V

    iget-object v2, p0, Lorg/telegram/ui/tools/d/b;->b:Lorg/telegram/ui/tools/d/a/b;

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/telegram/ui/tools/d/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/tools/d/a/a;->a(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    iget-object v0, v0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/tools/d/a/a;->a(F)V

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->h:Lorg/telegram/ui/tools/d/c;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/tools/d/c;->notifyItemChanged(I)V

    const-string/jumbo v0, "jjj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  onSuccessDownload----->  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method public presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/tools/d/b;->j:Lorg/telegram/ui/ActionBar/ActionBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    move-result v0

    return v0
.end method
