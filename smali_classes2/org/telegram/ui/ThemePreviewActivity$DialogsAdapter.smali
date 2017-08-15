.class public Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ThemePreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ThemePreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogsAdapter"
.end annotation


# instance fields
.field private dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Cells/DialogCell$CustomDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    const-string/jumbo v2, "Eva Summer"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    const-string/jumbo v2, "Reminds me of a Chinese prove..."

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    const-string/jumbo v2, "Alexandra Smith"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    const-string/jumbo v2, "Reminds me of a Chinese prove..."

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v2, v0, -0xe10

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    const-string/jumbo v2, "Make Apple"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    const-string/jumbo v2, "\ud83e\udd37\u200d\u2642\ufe0f Sticker"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v2, v0, -0x1c20

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    const-string/jumbo v2, "Paul Newman"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    const-string/jumbo v2, "Any ideas?"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    iput v7, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput v6, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v2, v0, -0x2a30

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    const-string/jumbo v2, "Old Pirates"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    const-string/jumbo v2, "Yo-ho-ho!"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    const/4 v2, 0x4

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput v5, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v2, v0, -0x3840

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    const-string/jumbo v2, "Kate Bright"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    const-string/jumbo v2, "Hola!"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    const/4 v2, 0x5

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v2, v0, -0x4650

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    const-string/jumbo v2, "Nick K"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    const-string/jumbo v2, "These are not the droids you are looking for"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    const/4 v2, 0x6

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v2, v0, -0x5460

    iput v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    iget-object v2, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-direct {v1}, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;-><init>()V

    const-string/jumbo v2, "Adler Toberg"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->name:Ljava/lang/String;

    const-string/jumbo v2, "Did someone say peanut butter?"

    iput-object v2, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->message:Ljava/lang/String;

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->id:I

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->unread_count:I

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->pinned:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->muted:Z

    iput v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->type:I

    add-int/lit16 v0, v0, -0x6270

    iput v0, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->date:I

    iput-boolean v5, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->verified:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->isMedia:Z

    iput-boolean v4, v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;->sent:Z

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell$CustomDialog;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(Lorg/telegram/ui/Cells/DialogCell$CustomDialog;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_1

    new-instance v0, Lorg/telegram/ui/Cells/DialogCell;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Landroid/content/Context;)V

    :cond_0
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v1

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    iget-object v1, p0, Lorg/telegram/ui/ThemePreviewActivity$DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
