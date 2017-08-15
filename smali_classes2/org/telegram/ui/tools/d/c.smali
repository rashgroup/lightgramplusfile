.class public Lorg/telegram/ui/tools/d/c;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/d/c$f;,
        Lorg/telegram/ui/tools/d/c$e;,
        Lorg/telegram/ui/tools/d/c$d;,
        Lorg/telegram/ui/tools/d/c$c;,
        Lorg/telegram/ui/tools/d/c$b;,
        Lorg/telegram/ui/tools/d/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lorg/telegram/ui/tools/d/d;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field b:Landroid/content/Context;

.field private c:Lorg/telegram/ui/tools/d/c$f;

.field private d:Lorg/telegram/ui/tools/d/c$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/telegram/ui/tools/d/c$f;Lorg/telegram/ui/tools/d/c$e;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/tools/d/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lorg/telegram/ui/tools/d/c;->c:Lorg/telegram/ui/tools/d/c$f;

    iput-object p4, p0, Lorg/telegram/ui/tools/d/c;->d:Lorg/telegram/ui/tools/d/c$e;

    iput-object p2, p0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/d/c;)Lorg/telegram/ui/tools/d/c$f;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/c;->c:Lorg/telegram/ui/tools/d/c$f;

    return-object v0
.end method

.method static synthetic b(Lorg/telegram/ui/tools/d/c;)Lorg/telegram/ui/tools/d/c$e;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/c;->d:Lorg/telegram/ui/tools/d/c$e;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lorg/telegram/ui/tools/d/d;
    .locals 4

    new-instance v0, Lorg/telegram/ui/tools/d/d;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040042

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/tools/d/d;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public a(Lorg/telegram/ui/tools/d/d;I)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    iget-object v0, p0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/tools/d/a/a;

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->j()I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->c()I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->l()I

    move-result v1

    iput v1, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->user_id:I

    iget-boolean v1, v0, Lorg/telegram/ui/tools/d/a/a;->n:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->h()F

    move-result v1

    cmpl-float v1, v1, v7

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p1, Lorg/telegram/ui/tools/d/d;->g:Landroid/widget/ImageView;

    const v2, 0x7f020223

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->h()F

    move-result v1

    cmpl-float v1, v1, v7

    if-nez v1, :cond_2

    iget v1, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    :goto_1
    iget-object v4, p1, Lorg/telegram/ui/tools/d/d;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->k()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lorg/telegram/ui/tools/d/d;->g:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/tools/d/c$a;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/tools/d/c$a;-><init>(Lorg/telegram/ui/tools/d/c;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p1, Lorg/telegram/ui/tools/d/d;->f:Landroid/widget/ImageView;

    new-instance v4, Lorg/telegram/ui/tools/d/c$b;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/tools/d/c$b;-><init>(Lorg/telegram/ui/tools/d/c;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p1, Lorg/telegram/ui/tools/d/d;->b:Landroid/support/v7/widget/CardView;

    new-instance v4, Lorg/telegram/ui/tools/d/c$c;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/tools/d/c$c;-><init>(Lorg/telegram/ui/tools/d/c;I)V

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p1, Lorg/telegram/ui/tools/d/d;->e:Landroid/widget/CheckBox;

    new-instance v4, Lorg/telegram/ui/tools/d/c$d;

    invoke-direct {v4, p0, p2}, Lorg/telegram/ui/tools/d/c$d;-><init>(Lorg/telegram/ui/tools/d/c;I)V

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p1, Lorg/telegram/ui/tools/d/d;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->n()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p1, Lorg/telegram/ui/tools/d/d;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lorg/telegram/ui/tools/d/d;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->h()F

    move-result v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v1, p1, Lorg/telegram/ui/tools/d/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->h()F

    move-result v2

    mul-float/2addr v2, v6

    float-to-int v2, v2

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lorg/telegram/ui/tools/d/d;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/tools/d/a/a;->h()F

    move-result v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v1, p1, Lorg/telegram/ui/tools/d/d;->g:Landroid/widget/ImageView;

    const v2, 0x7f020222

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_2
    iget v1, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    goto/16 :goto_1

    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/tools/d/a/a;->l:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/d/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lorg/telegram/ui/tools/d/d;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/tools/d/c;->a(Lorg/telegram/ui/tools/d/d;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/tools/d/c;->a(Landroid/view/ViewGroup;I)Lorg/telegram/ui/tools/d/d;

    move-result-object v0

    return-object v0
.end method
