.class Lorg/telegram/ui/ProfileNotificationsActivity$3$5;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ProfileNotificationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileNotificationsActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

.field final synthetic val$context1:Landroid/content/Context;

.field final synthetic val$selected:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileNotificationsActivity$3;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$5;->this$1:Lorg/telegram/ui/ProfileNotificationsActivity$3;

    iput-object p2, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$5;->val$context1:Landroid/content/Context;

    iput p3, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$5;->val$selected:I

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public isEnabled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$5;->val$selected:I

    if-ne p2, v1, :cond_0

    const-string/jumbo v1, "dialogTextGray"

    :goto_0
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    rem-int/lit8 v1, p2, 0xa

    div-int/lit8 v2, p2, 0xa

    const-string/jumbo v3, "Times"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Minutes"

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SmartNotificationsDetail"

    const v4, 0x7f080507

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string/jumbo v1, "dialogTextBlack"

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 5

    const/4 v3, 0x1

    new-instance v1, Lorg/telegram/ui/ProfileNotificationsActivity$3$5$1;

    iget-object v0, p0, Lorg/telegram/ui/ProfileNotificationsActivity$3$5;->val$context1:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ProfileNotificationsActivity$3$5$1;-><init>(Lorg/telegram/ui/ProfileNotificationsActivity$3$5;Landroid/content/Context;)V

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
