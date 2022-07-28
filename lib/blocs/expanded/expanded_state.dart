part of 'expanded_bloc.dart';

class ExpandedState extends Equatable {
  final bool expanded;
  const ExpandedState({required this.expanded});

  factory ExpandedState.initial() {
    return const ExpandedState(expanded: false);
  }

  ExpandedState copyWith({bool? expanded}) {
    return ExpandedState(expanded: expanded ?? this.expanded);
  }

  @override
  String toString() => 'ExpandedState(expanded: $expanded)';

  @override
  List<Object> get props => [expanded];
}
