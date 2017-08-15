.class Lorg/telegram/ui/tools/b$2;
.super Ljava/lang/Object;
.source "AlertShare.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/tools/b;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZZZLorg/telegram/ui/tools/b$b;Lorg/telegram/ui/tools/b$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/telegram/ui/tools/b;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/b;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/b$2;->a:Lorg/telegram/ui/tools/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/tools/c/i;->b(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    sput v0, Lorg/telegram/ui/DialogsA;->selectedTaba:I

    sget v0, Lorg/telegram/ui/DialogsA;->selectedTaba:I

    sput v0, Lorg/telegram/ui/DialogsA;->selectedTaba:I

    iget-object v0, p0, Lorg/telegram/ui/tools/b$2;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v0

    sget v1, Lorg/telegram/ui/DialogsA;->selectedTaba:I

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/b$d;->a(Lorg/telegram/ui/tools/b$d;I)I

    const-string/jumbo v0, "LOGHH"

    sget v1, Lorg/telegram/ui/Dialogs;->selectedTab:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/telegram/ui/tools/b$2;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/b$2;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v1}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/tools/b$d;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/tools/b$d;->a(Lorg/telegram/ui/tools/b$d;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/tools/b$2;->a:Lorg/telegram/ui/tools/b;

    invoke-static {v0}, Lorg/telegram/ui/tools/b;->d(Lorg/telegram/ui/tools/b;)Lorg/telegram/ui/tools/b$d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/tools/b$d;->notifyDataSetChanged()V

    return-void
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/tools/c/i;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(I)Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method
