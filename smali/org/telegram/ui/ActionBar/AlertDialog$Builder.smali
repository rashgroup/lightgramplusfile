.class public Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void
.end method


# virtual methods
.method public create()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$602(Lorg/telegram/ui/ActionBar/AlertDialog;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1602(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->items:[Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$602(Lorg/telegram/ui/ActionBar/AlertDialog;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->itemIcons:[I
    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2102(Lorg/telegram/ui/ActionBar/AlertDialog;[I)[I

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0, p3}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1602(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->message:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2302(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonText:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2502(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->negativeButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1802(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonText:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2602(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->neutralButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1902(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonText:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2402(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->positiveButtonListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$1702(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/content/DialogInterface$OnClickListener;)Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->title:Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$2202(Lorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    # setter for: Lorg/telegram/ui/ActionBar/AlertDialog;->customView:Landroid/view/View;
    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->access$402(Lorg/telegram/ui/ActionBar/AlertDialog;Landroid/view/View;)Landroid/view/View;

    return-object p0
.end method

.method public show()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->alertDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method
